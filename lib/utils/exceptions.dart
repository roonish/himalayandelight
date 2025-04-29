abstract class StringifyException implements Exception {
  const StringifyException([this.message]);

  final String? message;

  @override
  String toString() {
    if (message == null) {
      return "Instance of '$runtimeType'";
    }
    return '$runtimeType: $message';
  }
}

class ApiException extends StringifyException {
  const ApiException(this.statusCode, [String? message]) : super(message);
  final int statusCode;
}

class OpenAiCompletionException implements Exception {
  const OpenAiCompletionException([this.message]);

  final String? message;

  @override
  String toString() {
    if (message == null) {
      return "Instance of '$runtimeType'";
    }
    return '$runtimeType: $message';
  }
}

class ServerException extends ApiException {
  const ServerException(super.statusCode, [super.message]);
}

class ClientException extends ApiException {
  const ClientException(super.statusCode, [super.message]);
}

class InvalidCredentialsException extends ApiException {
  const InvalidCredentialsException(super.statusCode, [super.message]);
}
