abstract class Result<T> {}

class Success<T> extends Result<T> {
  late T data;
 
  Success(this.data);
}

class Error<T> extends Result<T> {
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
