abstract final class ConfigReader {
  static bool get isDev =>
      const String.fromEnvironment('ENVIRONMENT') == 'DEVELOPMENT';

  static bool get isStg =>
      const String.fromEnvironment('ENVIRONMENT') == 'STAGING';

  static bool get isProd =>
      const String.fromEnvironment('ENVIRONMENT') == 'PRODUCTION';

  static bool get mockMode => const bool.fromEnvironment('MOCK_MODE');

}
