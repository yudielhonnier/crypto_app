import 'package:crypto_app/features/home/data/models/market_model.dart';

abstract class MarketRemoteDataSource {
  //todo: add the address for the endpoint
  ///Calls the http://   endpoint
  ///
  ///Throws a [ServerException] for all the error codes
  Future<List<MarketModel>> getMarkets();
}
