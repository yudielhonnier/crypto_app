part of 'historical_market_bloc.dart';

enum HistoricalMarketStatus {
  initial,
  loading,
  loaded,
  failure,
}

enum HistoryInterval {
  day,
  week,
  month,
  sixMonth,
  year,
  fiveYears,
}

enum VsCurrency { usd, eur, ypt }

class HistoricalMarketState extends Equatable {
  const HistoricalMarketState({
    required this.status,
    required this.model,
    required this.interval,
    required this.vsCurrency,
  });

  final HistoricalMarketStatus status;
  final HistoricalMarketModel model;
  final HistoryInterval interval;
  final String vsCurrency;

  static HistoricalMarketState initial() => HistoricalMarketState(
        status: HistoricalMarketStatus.initial,
        model: HistoricalMarketModel.mockHistoricalMarketModel,
        interval: HistoryInterval.month,
        vsCurrency: VsCurrency.usd.name,
      );

  HistoricalMarketState copyWith({
    HistoricalMarketStatus? status,
    HistoricalMarketModel? model,
    HistoryInterval? interval,
    String? vsCurrency,
  }) =>
      HistoricalMarketState(
        status: status ?? this.status,
        model: model ?? this.model,
        interval: interval ?? this.interval,
        vsCurrency: vsCurrency ?? this.vsCurrency,
      );

  @override
  List<Object?> get props => [status, model, interval, vsCurrency];
}
