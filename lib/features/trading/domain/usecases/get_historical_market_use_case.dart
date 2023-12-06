import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:fpdart/src/either.dart';

import '../entities/historical_market.dart';
import '../repository/historical_market_repository.dart';

class GetHistoricalMarketParams {
  GetHistoricalMarketParams(this.from, this.to, this.id, this.vsCurrency);
  final int from;
  final int to;
  final String id;
  final String vsCurrency;
}

class GetHistoricalMarketUseCase
    implements Usecase<HistoricalMarket, GetHistoricalMarketParams> {
  GetHistoricalMarketUseCase(this.historicalMarketRepository);

  final HistoricalMarketRepository historicalMarketRepository;

  @override
  Future<Either<Failure, HistoricalMarket>> call(GetHistoricalMarketParams) =>
      historicalMarketRepository.getHistoricalMarket(
          GetHistoricalMarketParams.from,
          GetHistoricalMarketParams.to,
          GetHistoricalMarketParams.id,
          GetHistoricalMarketParams.vsCurrency);
}
