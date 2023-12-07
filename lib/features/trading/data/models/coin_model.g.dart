// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinModel _$$_CoinModelFromJson(Map<String, dynamic> json) => _$_CoinModel(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      marketData: json['market_data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_CoinModelToJson(_$_CoinModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'market_data': instance.marketData,
    };
