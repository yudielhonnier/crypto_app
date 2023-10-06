import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'market_remote_data_source.g.dart';

abstract class MarketRemoteDataSource {
  ///Calls the http://[base_url]/coins/markets?per_page=5  endpoint
  ///
  ///Throws a [ServerException] for all the error codes
  Future<List<MarketModel>> getMarkets();
}

@RestApi(baseUrl: 'https://api.coingecko.com/api/v3/coins')
abstract class MarketRemoteDataSourceImpl implements MarketRemoteDataSource {
  factory MarketRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _MarketRemoteDataSourceImpl;

  @GET('/markets?vs_currency=usd&per_page=10&page=1')
  @override
  Future<List<MarketModel>> getMarkets();
}
