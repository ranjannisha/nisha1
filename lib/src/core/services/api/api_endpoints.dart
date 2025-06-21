//API Endpoints

class ApiEndPoints {
  const ApiEndPoints._();

  /// Base URL for the API endpoints.
  static const String baseUrl = 'https://bbd2-202-79-47-196.ngrok-free.app';

  //Authentication Endpoints
  static String get login => '$baseUrl/auth/login/send-otp/';
  static String get signup => '$baseUrl/auth/register/user/';
  static String get verifyOtp => '$baseUrl/auth/login/verify-otp/';
  static String get refreshToken => 'api/token/refresh/';

}
