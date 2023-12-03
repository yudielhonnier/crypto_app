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

const cachedMarkets = 'CACHED_MARKET';

class MarketLocalDataSourceImpl implements MarketLocalDataSource {
  final SharedPreferences sharedPreferences;

  MarketLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheMarkets(List<MarketModel> markets) async {
    final marketsString = <String>[];

    for (var market in markets) {
      marketsString.add(json.encode(market.toJson()));
    }

    await sharedPreferences.setStringList(cachedMarkets, marketsString);
  }

  @override
  Future<List<MarketModel>> getLastMarkets() async {
    final cachedMarketsString = sharedPreferences.getStringList(cachedMarkets);

    final lastCachedUsers = <MarketModel>[];

    if (cachedMarketsString != null) {
      for (var market in cachedMarketsString) {
        lastCachedUsers.add(MarketModel.fromJson(json.decode(market)));
      }

      return lastCachedUsers;
    } else {
      throw CacheException();
    }
  }
}
