abstract class Failure {
  String get message;
}

abstract class ServerError extends Failure {}

abstract class CacheError extends Failure {}

class UnknowFailure extends Failure {
  @override
  String get message => 'Unknow Failure';
}

class ApiRequestError implements ServerError {
  final Object error;
  final StackTrace? stackTrace;

  ApiRequestError({required this.error, this.stackTrace});

  @override
  String get message => 'Failure in the API request';
}

class DbError extends CacheError {
  final Object error;
  final StackTrace? stackTrace;

  DbError({required this.error, this.stackTrace});

  @override
  String get message => 'Failure caching data in the DB';
}

class PickerFileError extends CacheError {
  final Object error;

  PickerFileError({required this.error});

  @override
  String get message => 'Failure picking file in the device';
}
