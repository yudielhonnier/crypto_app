import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:crypto_app/features/home/domain/repository/market_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/network_info.dart';
import '../data_sources/local/market_local_data_source.dart';
import '../data_sources/remote/market_remote_data_source.dart';

class MarketRepositoryImpl implements MarketRepository {
  final MarketRemoteDataSource remoteDataSource;
  final MarketLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  MarketRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, List<Market>>> getMarkets() async {
    try {
      final remote = await remoteDataSource.getMarkets();
      localDataSource.cacheMarkets(remote);
      return Right(remote);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
