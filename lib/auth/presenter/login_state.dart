class LoginState {}

class ProccessState {}

class LoadingState extends ProccessState {}

class ErrorState extends ProccessState {
  final String errorMessage;
  final String errorCode;

  ErrorState(this.errorCode, this.errorMessage);
}
