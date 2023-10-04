import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Error, Type>> call(Params params);
}
