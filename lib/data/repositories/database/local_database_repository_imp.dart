import 'package:hive_flutter/hive_flutter.dart';
import 'package:ifit/core/enums/app_user_role.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/domain/repositories/database/local_database_repository.dart';

class LocalDatabaseRepositoryImp implements LocalDatabaseRepository {
  static const String _authBox = 'authBox';
  static const String _settingBox = 'settingBox';
  static const String _tokenKey = 'authToken';
  static const String _userInfoKey = 'userInfo';
  static const String _userRoleKey = 'userRole';
  static const String _cometChatKey = 'cometChatKey';

  @override
  Future<void> initialize() async {
    try {
      // Initialize Hive and register adapters if needed
      await Hive.initFlutter();
      // Open the box to ensure it's ready for use
      await Hive.openBox(_authBox);
      await Hive.openBox(_settingBox);
    } catch (e) {
      throw Exception('Failed to initialize Hive: $e');
    }
  }

  @override
  Future<String> getToken() async {
    try {
      final box = await Hive.openBox(_authBox);
      return box.get(_tokenKey, defaultValue: '') as String;
    } catch (e) {
      throw Exception('Failed to get token: $e');
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      final box = await Hive.openBox(_authBox);
      await box.put(_tokenKey, token);
    } catch (e) {
      throw Exception('Failed to save token: $e');
    }
  }

  @override
  Future<void> logout() async {
    try {
      final box = await Hive.openBox(_authBox);
      await box.delete(_tokenKey);
      await box.delete(_userRoleKey);
      await box.delete(_cometChatKey);

    } catch (e) {
      throw Exception('Failed to delete token: $e');
    }
  }

  @override
  Future<AppUserRole?> getLoggedInUserRole() async {
    final box = await Hive.openBox(_authBox);
    String role = box.get(_userRoleKey, defaultValue: '') as String;
    if (role.isEmpty) return null;
    return role.toAppUserRole();
  }

  @override
  Future<void> saveUserRole(AppUserRole role) async {
    final box = await Hive.openBox(_authBox);
    await box.put(_userRoleKey, role.name);
  }


  @override
  Future<String> getCometChatToken() async {
    try {
      final box = await Hive.openBox(_authBox);
      return box.get(_cometChatKey, defaultValue: '') as String;
    } catch (e) {
      throw Exception('Failed to get token: $e');
    }
  }

  @override
  Future<void> saveCometChatToken(String token) async {
    final box = await Hive.openBox(_authBox);
    await box.put(_cometChatKey, token);
  }

  @override
  Future<int> lastTermsAndConditionVersion() async {
    final box = await Hive.openBox(_settingBox);
    int version = box.get("terms", defaultValue: 0) as int;
    return version;
  }

  @override
  Future<void> termsAccepted(int version) async {
    final box = await Hive.openBox(_settingBox);
    await box.put("terms",version);
  }

  @override
  Future<Map<String, dynamic>> getUserInfo() async {
    final box = await Hive.openBox(_authBox);
    return await box.get(_userInfoKey,defaultValue: {});
  }

  @override
  Future<void> saveUserInfo(Map<String, dynamic> data) async {
    final box = await Hive.openBox(_authBox);
    await box.put(_userInfoKey, data);
  }
}
