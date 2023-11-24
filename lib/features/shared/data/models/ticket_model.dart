import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/shared/domain/entities/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
// @JsonSerializable()
class TicketModel extends Ticket with _$TicketModel {
  const factory TicketModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'currentPrice') required double currentPrice,
    @JsonKey(name: 'marketCap') required double marketCap,
    @JsonKey(name: 'marketCapRank') required int marketCapRank,
    @JsonKey(name: 'fullyRilutedValuation')
    required double fullyRilutedValuation,
    @JsonKey(name: 'totalVolume') required double totalVolume,
    @JsonKey(name: 'high_24H') required double high24H,
    @JsonKey(name: 'low_24H') required double low24H,
    @JsonKey(name: 'priceChange_24H') required double priceChange24H,
    @JsonKey(name: 'priceChangePercentage_24H')
    required double priceChangePercentage24H,
    @JsonKey(name: 'marketCapChange_24H') required double marketCapChange24H,
    @JsonKey(name: 'marketCapChangePercentage_24H')
    required double marketCapChangePercentage24H,
    @JsonKey(name: 'circulatingSupply') required double circulatingSupply,
    @JsonKey(name: 'totalSupply') required double totalSupply,
    @JsonKey(name: 'maxSupply') double? maxSupply,
    required double ath,
    @JsonKey(name: 'athChangePercentage') required double athChangePercentage,
    @JsonKey(name: 'athRate') required DateTime athDate,
    required double atl,
    @JsonKey(name: 'atlChangePercentage') required double atlChangePercentage,
    @JsonKey(name: 'atlRate') required DateTime atlDate,
    Roi? roi,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  factory TicketModel.fromMarket(MarketModel market) {
    return TicketModel(
        id: market.id,
        symbol: market.symbol,
        name: market.name,
        image: market.image,
        currentPrice: market.currentPrice,
        marketCap: market.marketCap,
        marketCapRank: market.marketCapRank,
        fullyRilutedValuation: market.fullyDilutedValuation,
        totalVolume: market.totalVolume,
        high24H: market.high24H,
        low24H: market.low24H,
        priceChange24H: market.priceChange24H,
        priceChangePercentage24H: market.priceChangePercentage24H,
        marketCapChange24H: market.marketCapChange24H,
        marketCapChangePercentage24H: market.marketCapChangePercentage24H,
        circulatingSupply: market.circulatingSupply,
        totalSupply: market.totalSupply,
        ath: market.ath,
        athChangePercentage: market.athChangePercentage,
        athDate: market.athDate,
        atl: market.atl,
        atlChangePercentage: market.atlChangePercentage,
        atlDate: market.atlDate,
        lastUpdated: market.lastUpdated);
  }

  static final TicketModel mockTicket = TicketModel(
      id: "bitcoin",
      symbol: "btc",
      name: "Bitcoin",
      image:
          "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
      currentPrice: 26170,
      marketCap: 510424715433,
      marketCapRank: 1,
      fullyRilutedValuation: 549778910893,
      totalVolume: 8866163501,
      high24H: 26387,
      low24H: 26102,
      priceChange24H: -122.58442463428219,
      priceChangePercentage24H: -0.46624,
      marketCapChange24H: -2229476791.0550537,
      marketCapChangePercentage24H: -0.43489,
      circulatingSupply: 19496781.0,
      totalSupply: 21000000.0,
      maxSupply: 21000000.0,
      ath: 69045,
      athChangePercentage: -62.08201,
      athDate: DateTime.parse("2021-11-10T14:24:11.849Z"),
      atl: 67.81,
      atlChangePercentage: 38509.01636,
      atlDate: DateTime.parse("2013-07-06T00:00:00.000Z"),
      roi: null,
      lastUpdated: DateTime.parse("2023-09-26T23:27:20.666Z"));
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
