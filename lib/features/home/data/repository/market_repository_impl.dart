import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_info.dart';
import 'package:crypto_app/features/home/data/data_sources/local/market_local_data_source.dart';
import 'package:crypto_app/features/home/data/data_sources/remote/market_remote_data_source.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/domain/repository/market_repository.dart';
import 'package:fpdart/fpdart.dart';

class MarketRepositoryImpl implements MarketRepository {
  final MarketRemoteDataSource remoteDataSource;
  final MarketLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  MarketRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Error, List<MarketModel>>> getMarkets() async {
    bool result = await networkInfo.isConnected;
    print(' infoooo' + result.toString());

    if (await networkInfo.isConnected) {
      try {
        final remote = await remoteDataSource.getMarkets();
        localDataSource.cacheMarkets(remote);
        return Right(remote);
      } on ServerException catch (e) {
        return Left(ApiRequestError(error: e));
      }
    } else {
      try {
        final localMarkets = await localDataSource.getLastMarkets();
        Right(localMarkets);
      } on CacheException catch (e) {
        return Left(DbError(error: e));
      }
    }
    return Left(UnknowFailure());
  }
}
