import 'package:crypto_app/features/trading/domain/entities/historical_market.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'historical_market_model.freezed.dart';
part 'historical_market_model.g.dart';

@freezed
class HistoricalMarketModel extends HistoricalMarket
    with _$HistoricalMarketModel {
  const factory HistoricalMarketModel({
    required List<List<num>> prices,
    @JsonKey(name: "market_caps") required List<List<num>> marketCaps,
    @JsonKey(name: "total_volumes") required List<List<num>> totalVolumes,
  }) = _HistoricalMarketModel;

  factory HistoricalMarketModel.fromJson(Map<String, dynamic> json) =>
      _$HistoricalMarketModelFromJson(json);

  static HistoricalMarketModel mockHistoricalMarketModel =
      const HistoricalMarketModel(prices: [], marketCaps: [], totalVolumes: []);
}
