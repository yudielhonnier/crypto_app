import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

import 'package:crypto_app/features/home/domain/entities/market.dart';

// part 'market_model.g.dart';

List<MarketModel> marketModelFromJson(String str) => List<MarketModel>.from(
    json.decode(str).map((x) => MarketModel.fromJson(x)));

String marketModelToJson(List<MarketModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class MarketModel extends Market {
  const MarketModel({
    required id,
    required symbol,
    required name,
    required image,
    required currentPrice,
    required marketCap,
    required marketCapRank,
    required fullyDilutedValuation,
    required totalVolume,
    required high24h,
    required low24h,
    required priceChange24h,
    required priceChangePercentage24h,
    required marketCapChange24h,
    required marketCapChangePercentage24h,
    required circulatingSupply,
    required totalSupply,
    required maxSupply,
    required ath,
    required athChangePercentage,
    required athDate,
    required atl,
    required atlChangePercentage,
    required atlDate,
    required roi,
    required lastUpdated,
  }) : super(
            id: id,
            symbol: symbol,
            name: name,
            image: image,
            currentPrice: currentPrice,
            marketCap: marketCap,
            marketCapRank: marketCapRank,
            fullyDilutedValuation: fullyDilutedValuation,
            totalVolume: totalVolume,
            high24h: high24h,
            low24h: low24h,
            priceChange24h: priceChange24h,
            priceChangePercentage24h: priceChangePercentage24h,
            marketCapChange24h: marketCapChange24h,
            marketCapChangePercentage24h: marketCapChangePercentage24h,
            circulatingSupply: circulatingSupply,
            totalSupply: totalSupply,
            maxSupply: maxSupply,
            ath: ath,
            athChangePercentage: athChangePercentage,
            athDate: athDate,
            atl: atl,
            atlChangePercentage: atlChangePercentage,
            atlDate: atlDate,
            roi: roi,
            lastUpdated: lastUpdated);
  MarketModel copyWith({
    String? id,
    String? symbol,
    String? name,
    String? image,
    double? currentPrice,
    int? marketCap,
    int? marketCapRank,
    int? fullyDilutedValuation,
    int? totalVolume,
    double? high24h,
    double? low24h,
    double? priceChange24h,
    double? priceChangePercentage24h,
    double? marketCapChange24h,
    double? marketCapChangePercentage24h,
    double? circulatingSupply,
    double? totalSupply,
    int? maxSupply,
    double? ath,
    double? athChangePercentage,
    DateTime? athDate,
    double? atl,
    double? atlChangePercentage,
    DateTime? atlDate,
    Roi? roi,
    DateTime? lastUpdated,
  }) =>
      MarketModel(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        image: image ?? this.image,
        currentPrice: currentPrice ?? this.currentPrice,
        marketCap: marketCap ?? this.marketCap,
        marketCapRank: marketCapRank ?? this.marketCapRank,
        fullyDilutedValuation:
            fullyDilutedValuation ?? this.fullyDilutedValuation,
        totalVolume: totalVolume ?? this.totalVolume,
        high24h: high24h ?? this.high24h,
        low24h: low24h ?? this.low24h,
        priceChange24h: priceChange24h ?? this.priceChange24h,
        priceChangePercentage24h:
            priceChangePercentage24h ?? this.priceChangePercentage24h,
        marketCapChange24h: marketCapChange24h ?? this.marketCapChange24h,
        marketCapChangePercentage24h:
            marketCapChangePercentage24h ?? this.marketCapChangePercentage24h,
        circulatingSupply: circulatingSupply ?? this.circulatingSupply,
        totalSupply: totalSupply ?? this.totalSupply,
        maxSupply: maxSupply ?? this.maxSupply,
        ath: ath ?? this.ath,
        athChangePercentage: athChangePercentage ?? this.athChangePercentage,
        athDate: athDate ?? this.athDate,
        atl: atl ?? this.atl,
        atlChangePercentage: atlChangePercentage ?? this.atlChangePercentage,
        atlDate: atlDate ?? this.atlDate,
        roi: roi ?? this.roi,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );

  factory MarketModel.fromJson(Map<String, dynamic> json) => MarketModel(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        image: json["image"],
        currentPrice: json["current_price"]?.toDouble(),
        marketCap: json["market_cap"],
        marketCapRank: json["market_cap_rank"],
        fullyDilutedValuation: json["fully_diluted_valuation"],
        totalVolume: json["total_volume"],
        high24h: json["high_24h"]?.toDouble(),
        low24h: json["low_24h"]?.toDouble(),
        priceChange24h: json["price_change_24h"]?.toDouble(),
        priceChangePercentage24h:
            json["price_change_percentage_24h"]?.toDouble(),
        marketCapChange24h: json["market_cap_change_24h"]?.toDouble(),
        marketCapChangePercentage24h:
            json["market_cap_change_percentage_24h"]?.toDouble(),
        circulatingSupply: json["circulating_supply"]?.toDouble(),
        totalSupply: json["total_supply"]?.toDouble(),
        maxSupply: json["max_supply"],
        ath: json["ath"]?.toDouble(),
        athChangePercentage: json["ath_change_percentage"]?.toDouble(),
        athDate: DateTime.parse(json["ath_date"]),
        atl: json["atl"]?.toDouble(),
        atlChangePercentage: json["atl_change_percentage"]?.toDouble(),
        atlDate: DateTime.parse(json["atl_date"]),
        roi: Roi.fromJson(json["roi"]),
        lastUpdated: DateTime.parse(json["last_updated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "image": image,
        "current_price": currentPrice,
        "market_cap": marketCap,
        "market_cap_rank": marketCapRank,
        "fully_diluted_valuation": fullyDilutedValuation,
        "total_volume": totalVolume,
        "high_24h": high24h,
        "low_24h": low24h,
        "price_change_24h": priceChange24h,
        "price_change_percentage_24h": priceChangePercentage24h,
        "market_cap_change_24h": marketCapChange24h,
        "market_cap_change_percentage_24h": marketCapChangePercentage24h,
        "circulating_supply": circulatingSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "ath": ath,
        "ath_change_percentage": athChangePercentage,
        "ath_date": athDate.toIso8601String(),
        "atl": atl,
        "atl_change_percentage": atlChangePercentage,
        "atl_date": atlDate.toIso8601String(),
        "roi": roi.toJson(),
        "last_updated": lastUpdated.toIso8601String(),
      };
}

class Roi {
  double times;
  String currency;
  double percentage;

  Roi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  Roi copyWith({
    double? times,
    String? currency,
    double? percentage,
  }) =>
      Roi(
        times: times ?? this.times,
        currency: currency ?? this.currency,
        percentage: percentage ?? this.percentage,
      );

  factory Roi.fromJson(Map<String, dynamic> json) => Roi(
        times: json["times"]?.toDouble(),
        currency: json["currency"],
        percentage: json["percentage"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "times": times,
        "currency": currency,
        "percentage": percentage,
      };
}
