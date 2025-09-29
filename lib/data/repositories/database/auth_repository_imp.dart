import 'package:ifit/domain/repositories/database/local_database_repository.dart';

import '../../../domain/repositories/database/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthRepositoryImp implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final LocalDatabaseRepository localDatabaseRepository;

  AuthRepositoryImp({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required this.localDatabaseRepository,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
       _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  @override
  Future<void> googleLogin() async {
    try {
      // Trigger Google authentication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw FirebaseAuthException(
          code: 'ERROR_ABORTED_BY_USER',
          message: 'Sign in aborted by user',
        );
      }

      // Obtain auth details from request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final String? name = googleUser.displayName;

      // Sign in with credential
      UserCredential userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      _saveInfoLocally(
        name: name ?? userCredential.user?.displayName ?? "",
        email: userCredential.user?.email ?? "",
      );
    } on FirebaseAuthException catch (e) {
      throw AuthException(e.code, e.message ?? 'Google login failed');
    } catch (e) {
      throw AuthException(
        'UNKNOWN_ERROR',
        'Google login failed: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> appleLogin() async {
    try {
      // Trigger Apple authentication flow
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // Create credential
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      // Sign in with credential
      UserCredential credential = await _firebaseAuth.signInWithCredential(
        oauthCredential,
      );

      final String? fullName =
          appleCredential.givenName ?? appleCredential.familyName;

      final fireBaseName = credential.user?.displayName;

      final String? fallbackEmail = credential.user?.email;

      final String fallbackName =
          fullName ?? fireBaseName ?? fallbackEmail?.split('@').first ?? 'User';

      _saveInfoLocally(name: fallbackName, email: fallbackEmail ?? '');

    } on SignInWithAppleAuthorizationException catch (e) {
      switch (e.code) {
        case AuthorizationErrorCode.canceled:
          throw AuthException('USER_CANCELLED', 'Apple login was cancelled');
        case AuthorizationErrorCode.unknown:
          throw AuthException(
            'APPLE_AUTH_UNKNOWN',
            'Couldn’t sign in with Apple. Please try again.',
          );
        case AuthorizationErrorCode.failed:
          throw AuthException(
            'APPLE_AUTH_FAILED',
            'Apple authentication failed',
          );
        case AuthorizationErrorCode.invalidResponse:
          throw AuthException(
            'APPLE_AUTH_INVALID',
            'Invalid response from Apple',
          );
        default:
          throw AuthException(
            'APPLE_AUTH_ERROR',
            'Apple login error: ${e.message}',
          );
      }
    } on FirebaseAuthException catch (e) {
      throw AuthException(
        e.code,
        e.message ?? 'Firebase authentication failed',
      );
    } catch (e) {
      throw AuthException(
        'UNKNOWN_ERROR',
        'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> logout() async {
    _googleSignIn.signOut();
    _firebaseAuth.signOut();
  }

  @override
  Future<bool> isLoggedIn() async {
    return _firebaseAuth.currentUser?.uid != null;
  }

  _saveInfoLocally({required String name, required String email}) {
    localDatabaseRepository.saveUserInfo({"name": name, "email": email});
  }
}

class AuthException implements Exception {
  final String code;
  final String message;

  AuthException(this.code, this.message);

  @override
  String toString() => message;
}
