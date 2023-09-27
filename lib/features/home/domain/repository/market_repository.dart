import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';

abstract class MarketRepository {
  Future<Either<Failure, List<Market>>> getMarkets();
}
