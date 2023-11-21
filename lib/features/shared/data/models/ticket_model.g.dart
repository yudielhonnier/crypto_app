// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketModel _$$_TicketModelFromJson(Map<String, dynamic> json) =>
    _$_TicketModel(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      marketCap: (json['marketCap'] as num).toDouble(),
      marketCapRank: json['marketCapRank'] as int,
      fullyRilutedValuation: (json['fullyRilutedValuation'] as num).toDouble(),
      totalVolume: (json['totalVolume'] as num).toDouble(),
      high24H: (json['high_24H'] as num).toDouble(),
      low24H: (json['low_24H'] as num).toDouble(),
      priceChange24H: (json['priceChange_24H'] as num).toDouble(),
      priceChangePercentage24H:
          (json['priceChangePercentage_24H'] as num).toDouble(),
      marketCapChange24H: (json['marketCapChange_24H'] as num).toDouble(),
      marketCapChangePercentage24H:
          (json['marketCapChangePercentage_24H'] as num).toDouble(),
      circulatingSupply: (json['circulatingSupply'] as num).toDouble(),
      totalSupply: (json['totalSupply'] as num).toDouble(),
      maxSupply: (json['maxSupply'] as num?)?.toDouble(),
      ath: (json['ath'] as num).toDouble(),
      athChangePercentage: (json['athChangePercentage'] as num).toDouble(),
      athDate: DateTime.parse(json['athRate'] as String),
      atl: (json['atl'] as num).toDouble(),
      atlChangePercentage: (json['atlChangePercentage'] as num).toDouble(),
      atlDate: DateTime.parse(json['atlRate'] as String),
      roi: json['roi'] == null
          ? null
          : Roi.fromJson(json['roi'] as Map<String, dynamic>),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
    );

Map<String, dynamic> _$$_TicketModelToJson(_$_TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'marketCap': instance.marketCap,
      'marketCapRank': instance.marketCapRank,
      'fullyRilutedValuation': instance.fullyRilutedValuation,
      'totalVolume': instance.totalVolume,
      'high_24H': instance.high24H,
      'low_24H': instance.low24H,
      'priceChange_24H': instance.priceChange24H,
      'priceChangePercentage_24H': instance.priceChangePercentage24H,
      'marketCapChange_24H': instance.marketCapChange24H,
      'marketCapChangePercentage_24H': instance.marketCapChangePercentage24H,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'maxSupply': instance.maxSupply,
      'ath': instance.ath,
      'athChangePercentage': instance.athChangePercentage,
      'athRate': instance.athDate.toIso8601String(),
      'atl': instance.atl,
      'atlChangePercentage': instance.atlChangePercentage,
      'atlRate': instance.atlDate.toIso8601String(),
      'roi': instance.roi,
      'last_updated': instance.lastUpdated.toIso8601String(),
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
