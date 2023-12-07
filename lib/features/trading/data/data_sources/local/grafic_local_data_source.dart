import 'dart:convert';

import 'package:crypto_app/features/trading/data/models/historical_market_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/error/exceptions.dart';

abstract class GraficLocalDataSource {
  Future<void> cachedHistoricalMarket(HistoricalMarketModel historicalMarket);
  Future<HistoricalMarketModel> getLastHistoricalMarket();
}

String historicalMarketCached = 'CACHED_HISTORICAL_MARKET';

class HistoricalMarketLocalDataSourceImpl implements GraficLocalDataSource {
  final SharedPreferences sharedPreferences;

  HistoricalMarketLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cachedHistoricalMarket(
      HistoricalMarketModel historicalMarket) async {
    String toCached = jsonEncode(historicalMarket);

    await sharedPreferences.setString(historicalMarketCached, toCached);
  }

  @override
  Future<HistoricalMarketModel> getLastHistoricalMarket() async {
    String? historicalM = sharedPreferences.getString(historicalMarketCached);
    if (historicalM != null) {
      return HistoricalMarketModel.fromJson(jsonDecode(historicalM));
    } else {
      throw CacheException();
    }
  }
}
