import 'dart:convert';

import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MarketLocalDataSource {
  ///Gets the cached [MarketModel] list wich was gotten the last time
  ///the user had an internet connection
  ///
  ///Throws a [CachedException] if no cached data is present.
  Future<List<MarketModel>> getLastMarkets();

  Future<void> cacheMarkets(List<MarketModel> markets);
}

const CACHED_MARKET = 'CACHED_MARKET';

class MarketLocalDataSourceImpl implements MarketLocalDataSource {
  final SharedPreferences sharedPreferences;

  MarketLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheMarkets(List<MarketModel> markets) {
    // TODO: implement cacheMarkets
    print('todo :implement cachemarkets');
    return Future(() => null);
  }

  @override
  Future<List<MarketModel>> getLastMarkets() {
    final jsonString = sharedPreferences.getString(CACHED_MARKET);
    if (jsonString != null) {
      return Future.value(
          [MarketModel.fromJson(json.decode(jsonString ?? ''))]);
    } else {
      throw CacheException();
    }
  }
}
