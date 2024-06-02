
class ApiConfig {
  ApiConfig._();

  /// **** Production ****
  static const String baseApiUrl = "";

  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration connectionTimeout = Duration(seconds: 30);

  static const String login = '$baseApiUrl/api/v1/user/sign-in';
}