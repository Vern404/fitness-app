/// class for handling http Exception
final class AppException implements Exception {
  /// Http Exception constructor
  const AppException({
    required this.message,
    required this.statusCode,
    required this.identifier,
    required this.errorCode,
  });

  /// Set message exception
  final String? message;

  /// Set status code exception
  final int? statusCode;

  /// Set identifier exception
  final String? identifier;

  /// Set error code
  final String? errorCode;

  @override
  String toString() {
    return 'statusCode=$statusCode\nmessage=$message'
        '\nidentifier=$identifier\nerrorCode=$errorCode';
  }
}
