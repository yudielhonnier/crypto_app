part of 'historical_market_bloc.dart';

@freezed
class HistoricalMarketEvent with _$HistoricalMarketEvent {
  const factory HistoricalMarketEvent.getHistoricalMarket(TicketModel ticket) =
      _GetHistoricalMarket;
  const factory HistoricalMarketEvent.changeInterval(HistoryInterval interval) =
      _ChangeInterval;
  const factory HistoricalMarketEvent.changeVsCurrency(String vsCurrency) =
      _ChangeVsCurrency;
}
