abstract class Error {
  String get message;
}

abstract class ServerError extends Error {}

abstract class CacheError extends Error {}

class UnknowFailure extends Error {
  @override
  String get message => 'Unknow Error';
}

class ApiRequestError implements ServerError {
  final Object error;
  final StackTrace? stackTrace;

  ApiRequestError({required this.error, this.stackTrace});

  @override
  String get message => 'Error in the API request';
}

class DbError extends CacheError {
  final Object error;
  final StackTrace? stackTrace;

  DbError({required this.error, this.stackTrace});

  @override
  String get message => 'Error caching data in the DB';
}
