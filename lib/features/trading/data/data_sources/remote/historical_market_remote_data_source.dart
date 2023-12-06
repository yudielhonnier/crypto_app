import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/historical_market_model.dart';

part 'historical_market_remote_data_source.g.dart';

abstract class HistoricalMarketRemoteDataSource {
  ///Calls the http://[base_url]/  endpoint
  ///
  ///hrows a [ServerException] for all the error codes
  Future<HistoricalMarketModel> getHistoricalMarket(
      int from, int to, String id, String vsCurrency);
}

@RestApi(baseUrl: 'https://api.coingecko.com/api/v3/coins')
abstract class HistoricalMarketRemoteDataSourceImpl
    implements HistoricalMarketRemoteDataSource {
  factory HistoricalMarketRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _HistoricalMarketRemoteDataSourceImpl;

  @override
  @GET('/{id}/market_chart/range?precision=6')
  Future<HistoricalMarketModel> getHistoricalMarket(
    @Query('from') int from,
    @Query('to') int to,
    @Path('id') String id,
    @Query('vs_currency') String vsCurrency,
  );
}
