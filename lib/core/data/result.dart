abstract class Result {}

class Success<T> extends Result {
  late T data;
 
  Success(this.data);
}

class Error extends Result {
  late String errorCode;
  late String errorMessage;

  Error({
    required this.errorCode,
    this.errorMessage = "",
  });

  Error.exception(
    Exception exception, {
    required this.errorCode,
  }) {
    errorMessage = exception.toString();
  }
}
