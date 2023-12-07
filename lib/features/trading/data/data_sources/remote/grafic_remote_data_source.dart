import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/coin_model.dart';
import '../../models/historical_market_model.dart';

part 'grafic_remote_data_source.g.dart';

abstract class GraficRemoteDataSource {
  ///Calls the http://[base_url]/  endpoint
  ///
  ///hrows a [ServerException] for all the error codes
  Future<HistoricalMarketModel> getHistoricalMarket(
      int from, int to, String id, String vsCurrency);

  Future<CoinModel> getCoinInfo(String id);
}

@RestApi(baseUrl: 'https://api.coingecko.com/api/v3/coins')
abstract class GraficRemoteDataSourceImpl implements GraficRemoteDataSource {
  factory GraficRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _GraficRemoteDataSourceImpl;

  @override
  @GET('/{id}/market_chart/range?precision=6')
  Future<HistoricalMarketModel> getHistoricalMarket(
    @Query('from') int from,
    @Query('to') int to,
    @Path('id') String id,
    @Query('vs_currency') String vsCurrency,
  );

  @override
  @GET('/{id}')
  Future<CoinModel> getCoinInfo(@Path('id') String id);
}
