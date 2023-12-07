import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/coin.dart';

part 'coin_model.freezed.dart';
part 'coin_model.g.dart';

@freezed
class CoinModel extends Coin with _$CoinModel {
  const factory CoinModel({
    required String id,
    required String name,
    required String symbol,
    @JsonKey(name: 'market_data') required Map<String, dynamic> marketData,
  }) = _CoinModel;

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);

  static CoinModel mockCoinModel =
      const CoinModel(id: '', name: '', symbol: '', marketData: {});
}
