part of 'grafic_bloc.dart';

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

enum VsCurrency { usd, eur, mxn }

class GraficState extends Equatable {
  const GraficState({
    required this.status,
    required this.historicMarketModel,
    required this.interval,
    required this.vsCurrency,
    required this.coinModel,
  });

  final HistoricalMarketStatus status;
  final HistoricalMarketModel historicMarketModel;
  final CoinModel coinModel;
  final HistoryInterval interval;
  final String vsCurrency;

  static GraficState initial() => GraficState(
        status: HistoricalMarketStatus.initial,
        historicMarketModel: HistoricalMarketModel.mockHistoricalMarketModel,
        interval: HistoryInterval.month,
        vsCurrency: VsCurrency.usd.name,
        coinModel: CoinModel.mockCoinModel,
      );

  GraficState copyWith(
          {HistoricalMarketStatus? status,
          HistoricalMarketModel? historicalMarketModel,
          HistoryInterval? interval,
          String? vsCurrency,
          CoinModel? coinModel}) =>
      GraficState(
          status: status ?? this.status,
          historicMarketModel: historicalMarketModel ?? historicMarketModel,
          interval: interval ?? this.interval,
          vsCurrency: vsCurrency ?? this.vsCurrency,
          coinModel: coinModel ?? this.coinModel);

  @override
  List<Object?> get props =>
      [status, historicMarketModel, interval, vsCurrency];
}
