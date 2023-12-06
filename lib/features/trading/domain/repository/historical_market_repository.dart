import 'package:crypto_app/features/trading/data/models/historical_market_model.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';

abstract class HistoricalMarketRepository {
  Future<Either<Failure, HistoricalMarketModel>> getHistoricalMarket(
      int from, int to, String id, String vsCurrency);
}
