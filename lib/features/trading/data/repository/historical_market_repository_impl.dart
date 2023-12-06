import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_info.dart';
import 'package:crypto_app/features/trading/data/data_sources/local/historical_market_local_data_source.dart';
import 'package:crypto_app/features/trading/data/models/historical_market_model.dart';
import 'package:crypto_app/features/trading/domain/repository/historical_market_repository.dart';
import 'package:fpdart/src/either.dart';

import '../data_sources/remote/historical_market_remote_data_source.dart';

class HistoricalMarketRepositoryImpl implements HistoricalMarketRepository {
  final HistoricalMarketLocalDataSource localDataSource;
  final HistoricalMarketRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  HistoricalMarketRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, HistoricalMarketModel>> getHistoricalMarket(
      int from, int to, String id, String vsCurrency) async {
    bool isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final remote = await remoteDataSource.getHistoricalMarket(
            from, to, id, vsCurrency);
        return Right(remote);
      } on ServerException catch (e) {
        return Left(ApiRequestError(error: e));
      }
    } else {
      final localHistoricalMarket =
          await localDataSource.getLastHistoricalMarket();
      return Right(localHistoricalMarket);
    }
    return Left(UnknowFailure());
  }
}
