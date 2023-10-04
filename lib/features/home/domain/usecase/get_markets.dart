import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:crypto_app/features/home/domain/repository/market_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetMarketsUseCase implements Usecase<List<Market>, NoParams> {
  final MarketRepository marketRepository;

  GetMarketsUseCase(this.marketRepository);

  @override
  Future<Either<Error, List<Market>>> call(NoParams params) =>
      marketRepository.getMarkets();
}
