// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketModel _$$_MarketModelFromJson(Map<String, dynamic> json) =>
    _$_MarketModel(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num?)?.toDouble() ?? 0.0,
      marketCap: (json['marketCap'] as num?)?.toDouble() ?? 0.0,
      marketCapRank: json['marketCapRank'] as int? ?? 0,
      fullyDilutedValuation:
          (json['fullyDilutedValuation'] as num?)?.toDouble() ?? 0.0,
      totalVolume: (json['totalVolume'] as num?)?.toDouble() ?? 0.0,
      high24H: (json['high24H'] as num?)?.toDouble() ?? 0.0,
      low24H: (json['low24H'] as num?)?.toDouble() ?? 0.0,
      priceChange24H: (json['priceChange24H'] as num?)?.toDouble() ?? 0.0,
      priceChangePercentage24H:
          (json['priceChangePercentage24H'] as num?)?.toDouble() ?? 0.0,
      marketCapChange24H:
          (json['marketCapChange24H'] as num?)?.toDouble() ?? 0.0,
      marketCapChangePercentage24H:
          (json['marketCapChangePercentage24H'] as num?)?.toDouble() ?? 0.0,
      circulatingSupply: (json['circulatingSupply'] as num?)?.toDouble() ?? 0.0,
      totalSupply: (json['totalSupply'] as num?)?.toDouble() ?? 0.0,
      maxSupply: (json['maxSupply'] as num?)?.toDouble() ?? 0.0,
      ath: (json['ath'] as num?)?.toDouble() ?? 0.0,
      athChangePercentage:
          (json['athChangePercentage'] as num?)?.toDouble() ?? 0.0,
      athDate: json['athDate'] == null
          ? null
          : DateTime.parse(json['athDate'] as String),
      atl: (json['atl'] as num?)?.toDouble() ?? 0.0,
      atlChangePercentage:
          (json['atlChangePercentage'] as num?)?.toDouble() ?? 0.0,
      atlDate: json['atlDate'] == null
          ? null
          : DateTime.parse(json['atlDate'] as String),
      roi: json['roi'] == null
          ? null
          : Roi.fromJson(json['roi'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$_MarketModelToJson(_$_MarketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'marketCapRank': instance.marketCapRank,
      'fullyDilutedValuation': instance.fullyDilutedValuation,
      'totalVolume': instance.totalVolume,
      'high24H': instance.high24H,
      'low24H': instance.low24H,
      'priceChange24H': instance.priceChange24H,
      'priceChangePercentage24H': instance.priceChangePercentage24H,
      'marketCapChange24H': instance.marketCapChange24H,
      'marketCapChangePercentage24H': instance.marketCapChangePercentage24H,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'ath': instance.ath,
      'athChangePercentage': instance.athChangePercentage,
      'athDate': instance.athDate?.toIso8601String(),
      'atl': instance.atl,
      'atlChangePercentage': instance.atlChangePercentage,
      'atlDate': instance.atlDate?.toIso8601String(),
      'roi': instance.roi,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_$_Roi _$$_RoiFromJson(Map<String, dynamic> json) => _$_Roi(
      times: (json['times'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RoiToJson(_$_Roi instance) => <String, dynamic>{
      'times': instance.times,
      'currency': instance.currency,
      'percentage': instance.percentage,
    };
