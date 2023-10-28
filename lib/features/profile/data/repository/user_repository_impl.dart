import 'dart:async';

import 'package:cross_file/src/types/interface.dart';
import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/profile/data/data_sources/local/user_local_data_source.dart';
import 'package:crypto_app/features/profile/domain/repository/user_repository.dart';
import 'package:fpdart/src/either.dart';

class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, XFile>> pickImage() async {
    //todo: finish this method
    return Left(UnknowFailure());
  }
}
