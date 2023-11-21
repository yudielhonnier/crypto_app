
class CoinResponseList{
  List<CoinResponse> items =[];

  CoinResponseList();

  CoinResponseList.fromJsonList(List<dynamic> jsonList){

    if(jsonList==null) return;
    for(var item in jsonList){
      final coinResponse=CoinResponse.fromJson(item);
      items.add(coinResponse);
    }
  }
}




class CoinResponse {
  CoinResponse({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high_24h,
    required this.low_24h,
    required this.priceChange_24h,
    required this.priceChangePercentage_24h,
    required this.marketCapChange_24h,
    required this.marketCapChangePercentage_24h,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
     this.roi,
    required this.lastUpdated,
  });
  late final String id;
  late final String symbol;
  late final String name;
  late final String image;
  late final num currentPrice;
  late final num  marketCap;
  late final num  marketCapRank;
  late final num  fullyDilutedValuation;
  late final num  totalVolume;
  late final num  high_24h;
  late final num  low_24h;
  late final num  priceChange_24h;
  late final num  priceChangePercentage_24h;
  late final num  marketCapChange_24h;
  late final num  marketCapChangePercentage_24h;
  late final num  circulatingSupply;
  late final num  totalSupply;
  late final num  maxSupply;
  late final num  ath;
  late final num  athChangePercentage;
  late final String athDate;
  late final num  atl;
  late final num  atlChangePercentage;
  late final String atlDate;
  late final Null roi;
  late final String lastUpdated;
  

  //todo add a correct way to get all responses
  CoinResponse.fromJson(Map<String, dynamic> json){
    // Map<String, dynamic> json =list[0];

    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_price'];
    marketCap = json['market_cap'];
    marketCapRank = json['market_cap_rank'];
    fullyDilutedValuation = json['fully_diluted_valuation'];
    totalVolume = json['total_volume'];
    high_24h = json['high_24h'];
    low_24h = json['low_24h'];
    priceChange_24h = json['price_change_24h'];
    priceChangePercentage_24h = json['price_change_percentage_24h'];
    marketCapChange_24h = json['market_cap_change_24h'];
    marketCapChangePercentage_24h = json['market_cap_change_percentage_24h'];
    circulatingSupply = json['circulating_supply'];
    totalSupply = json['total_supply'];
    maxSupply = json['max_supply'];
    ath = json['ath'];
    athChangePercentage = json['ath_change_percentage'];
    athDate = json['ath_date'];
    atl = json['atl'];
    atlChangePercentage = json['atl_change_percentage'];
    atlDate = json['atl_date'];
    roi = null;
    lastUpdated = json['last_updated'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['symbol'] = symbol;
    _data['name'] = name;
    _data['image'] = image;
    _data['current_price'] = currentPrice;
    _data['market_cap'] = marketCap;
    _data['market_cap_rank'] = marketCapRank;
    _data['fully_diluted_valuation'] = fullyDilutedValuation;
    _data['total_volume'] = totalVolume;
    _data['high_24h'] = high_24h;
    _data['low_24h'] = low_24h;
    _data['price_change_24h'] = priceChange_24h;
    _data['price_change_percentage_24h'] = priceChangePercentage_24h;
    _data['market_cap_change_24h'] = marketCapChange_24h;
    _data['market_cap_change_percentage_24h'] = marketCapChangePercentage_24h;
    _data['circulating_supply'] = circulatingSupply;
    _data['total_supply'] = totalSupply;
    _data['max_supply'] = maxSupply;
    _data['ath'] = ath;
    _data['ath_change_percentage'] = athChangePercentage;
    _data['ath_date'] = athDate;
    _data['atl'] = atl;
    _data['atl_change_percentage'] = atlChangePercentage;
    _data['atl_date'] = atlDate;
    _data['roi'] = roi;
    _data['last_updated'] = lastUpdated;
    return _data;
  }
}