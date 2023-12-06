// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoricalMarketModel _$$_HistoricalMarketModelFromJson(
        Map<String, dynamic> json) =>
    _$_HistoricalMarketModel(
      prices: (json['prices'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
      marketCaps: (json['market_caps'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
      totalVolumes: (json['total_volumes'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
    );

Map<String, dynamic> _$$_HistoricalMarketModelToJson(
        _$_HistoricalMarketModel instance) =>
    <String, dynamic>{
      'prices': instance.prices,
      'market_caps': instance.marketCaps,
      'total_volumes': instance.totalVolumes,
    };
