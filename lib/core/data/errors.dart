class LoginErrorExceptions implements Exception {
  final String message;
  const LoginErrorExceptions(this.message);
}

class ErrorCode {
  static const loginError = 'login error';
}
