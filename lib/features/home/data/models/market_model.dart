import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
class MarketModel extends Market with _$MarketModel {
  const factory MarketModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @Default(0.0) double? currentPrice,
    @Default(0.0) double? marketCap,
    @Default(0) int? marketCapRank,
    @Default(0.0) double? fullyDilutedValuation,
    @Default(0.0) double? totalVolume,
    @Default(0.0) double? high24H,
    @Default(0.0) double? low24H,
    @Default(0.0) double? priceChange24H,
    @Default(0.0) double? priceChangePercentage24H,
    @Default(0.0) double? marketCapChange24H,
    @Default(0.0) double? marketCapChangePercentage24H,
    @Default(0.0) double? circulatingSupply,
    @Default(0.0) double? totalSupply,
    @Default(0.0) double? maxSupply,
    @Default(0.0) double? ath,
    @Default(0.0) double? athChangePercentage,
    DateTime? athDate,
    @Default(0.0) double? atl,
    @Default(0.0) double? atlChangePercentage,
    DateTime? atlDate,
    Roi? roi,
    DateTime? lastUpdated,
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
