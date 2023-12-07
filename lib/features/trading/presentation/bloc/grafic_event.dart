part of 'grafic_bloc.dart';

@freezed
class GraficEvent with _$GraficEvent {
  const factory GraficEvent.getHistoricalMarket(String id) =
      _GetHistoricalMarket;
  const factory GraficEvent.changeInterval(HistoryInterval interval) =
      _ChangeInterval;
  const factory GraficEvent.changeVsCurrency(String vsCurrency) =
      _ChangeVsCurrency;
  const factory GraficEvent.getCoinInfo(String id) = _GetCoinInfo;
}
