class Market {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final double? currentPrice;
  final double? marketCap;
  final int? marketCapRank;
  final double? fullyDilutedValuation;
  final double? totalVolume;
  final double? high24H;
  final double? low24H;
  final double? priceChange24H;
  final double? priceChangePercentage24H;
  final double? marketCapChange24H;
  final double? marketCapChangePercentage24H;
  final double? circulatingSupply;
  final double? totalSupply;
  final double? maxSupply;
  final double? ath;
  final double? athChangePercentage;
  final DateTime? athDate;
  final double? atl;
  final double? atlChangePercentage;
  final DateTime? atlDate;
  final dynamic roi;
  final DateTime? lastUpdated;

  const Market({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    this.roi,
    required this.lastUpdated,
  });
}
