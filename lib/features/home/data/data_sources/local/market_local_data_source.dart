import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';

abstract class MarketLocalDataSource {
  ///Gets the cached [MarketModel] list wich was gotten the last time
  ///the user had an internet connection
  ///
  ///Throws a [CachedException] if no cached data is present.
  Future<List<MarketModel>> getLastMarkets();

  Future<void> cacheMarkets(List<MarketModel> markets);
}
