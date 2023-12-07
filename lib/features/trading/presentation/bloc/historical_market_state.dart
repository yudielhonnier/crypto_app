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
  fiveYears;

  (int, int) get rangeInUnix {
    final to = DateTime.now();
    final from = to.subtract(Duration(days: daysInterval()));

    return (from.toUnixDateTime(), to.toUnixDateTime());
  }

  int daysInterval() {
    int res = 30;
    switch (this) {
      case HistoryInterval.day:
        res = 1;
        break;
      case HistoryInterval.week:
        res = 7;
        break;
      case HistoryInterval.month:
        res = 30;
        break;
      case HistoryInterval.sixMonth:
        res = 180;
        break;
      case HistoryInterval.year:
        res = 365;
        break;
      case HistoryInterval.fiveYears:
        res = 1825;
        break;
    }
    return res;
  }

  String firstLetterUpperCase() {
    var res = 'D';
    switch (this) {
      case HistoryInterval.day:
        res = 'D';
        break;
      case HistoryInterval.week:
        res = 'W';
        break;
      case HistoryInterval.month:
        res = 'M';
        break;
      case HistoryInterval.sixMonth:
        res = '6M';
        break;
      case HistoryInterval.year:
        res = 'Y';
        break;
      case HistoryInterval.fiveYears:
        res = '5Y';
        break;
    }
    return res;
  }
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
