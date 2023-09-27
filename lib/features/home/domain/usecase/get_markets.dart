import 'package:crypto_app/core/no_params.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:crypto_app/features/home/domain/repository/market_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetMarkets implements Usecase<List<Market>, NoParams> {
  final MarketRepository marketRepository;

  GetMarkets(this.marketRepository);

  @override
  Future<Either<Failure, List<Market>>> call(NoParams params) =>
      marketRepository.getMarkets();
}
