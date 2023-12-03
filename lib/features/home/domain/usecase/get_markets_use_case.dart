import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:fpdart/fpdart.dart';

import '../repository/market_repository.dart';

class GetMarketsUseCase implements Usecase<List<Market>, int> {
  final MarketRepository marketRepository;

  GetMarketsUseCase(this.marketRepository);

  @override
  Future<Either<Failure, List<Market>>> call(pageNum) =>
      marketRepository.getMarkets(pageNum);
}
