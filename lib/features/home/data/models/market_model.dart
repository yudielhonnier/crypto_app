import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
// @JsonSerializable()
class MarketModel extends Market with _$MarketModel {
  const factory MarketModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'market_cap') required double marketCap,
    @JsonKey(name: 'market_cap_rank') required int marketCapRank,
    @JsonKey(name: 'fully_diluted_valuation')
    required double fullyDilutedValuation,
    @JsonKey(name: 'total_volume') required double totalVolume,
    @JsonKey(name: 'high_24h') required double high24H,
    @JsonKey(name: 'low_24h') required double low24H,
    @JsonKey(name: 'price_change_24h') required double priceChange24H,
    @JsonKey(name: 'price_change_percentage_24h')
    required double priceChangePercentage24H,
    @JsonKey(name: 'market_cap_change_24h') required double marketCapChange24H,
    @JsonKey(name: 'market_cap_change_percentage_24h')
    required double marketCapChangePercentage24H,
    @JsonKey(name: 'circulating_supply') required double circulatingSupply,
    @JsonKey(name: 'total_supply') required double totalSupply,
    @JsonKey(name: 'max_supply') double? maxSupply,
    required double ath,
    @JsonKey(name: 'ath_change_percentage') required double athChangePercentage,
    @JsonKey(name: 'ath_date') required DateTime athDate,
    required double atl,
    @JsonKey(name: 'atl_change_percentage') required double atlChangePercentage,
    @JsonKey(name: 'atl_date') required DateTime atlDate,
    Roi? roi,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
  }) = _MarketModel;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);
}

@freezed
class Roi with _$Roi {
  const factory Roi({
    double? times,
    String? currency,
    double? percentage,
  }) = _Roi;

  factory Roi.fromJson(Map<String, dynamic> json) => _$RoiFromJson(json);
}
