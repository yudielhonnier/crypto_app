import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/coin.dart';
import '../repository/historical_market_repository.dart';

class GetCoinInfoUseCase extends Usecase<Coin, String> {
  GraficRepository graficRepository;

  GetCoinInfoUseCase(this.graficRepository);

  @override
  Future<Either<Failure, Coin>> call(String params) =>
      graficRepository.getCoinInfo(params);
}
