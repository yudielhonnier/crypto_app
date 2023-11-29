import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/shared/domain/entities/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
class TicketModel extends Ticket with _$TicketModel {
  const factory TicketModel({
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
        fullyDilutedValuation: market.fullyDilutedValuation,
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
      fullyDilutedValuation: 549778910893,
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

  static final TicketModel mockTicketEmpty = TicketModel(
      id: "",
      symbol: "",
      name: "",
      image: "",
      currentPrice: 0,
      marketCap: 0,
      marketCapRank: 0,
      fullyDilutedValuation: 0,
      totalVolume: 0,
      high24H: 0,
      low24H: 0,
      priceChange24H: 0.0,
      priceChangePercentage24H: -0.0,
      marketCapChange24H: -0.0,
      marketCapChangePercentage24H: -0.0,
      circulatingSupply: 0.0,
      totalSupply: 0.0,
      maxSupply: 0.0,
      ath: 0,
      athChangePercentage: -0.0,
      athDate: DateTime.parse("2023-09-26T23:27:20.666Z"),
      atl: 0.0,
      atlChangePercentage: 0.0,
      atlDate: DateTime.parse("2023-09-26T23:27:20.666Z"),
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
