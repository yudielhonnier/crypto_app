import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import 'package:crypto_app/features/home/domain/entities/market.dart';

abstract class MarketRepository {
  Future<Either<Error, List<Market>>> getMarkets(int page);
}
