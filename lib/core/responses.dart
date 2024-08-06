abstract class Response {}

class Success<T> extends Response {
  late T data;
 
  Success(this.data);
}

class Error extends Response {
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
