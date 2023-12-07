import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/coin.dart';
import '../entities/historical_market.dart';

abstract class GraficRepository {
  Future<Either<Failure, HistoricalMarket>> getHistoricalMarket(
      int from, int to, String id, String vsCurrency);

  Future<Either<Failure, Coin>> getCoinInfo(String id);
}
