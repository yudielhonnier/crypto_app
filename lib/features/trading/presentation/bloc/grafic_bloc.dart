import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/trading/domain/usecases/get_coin_info_use_case.dart';
import 'package:crypto_app/features/trading/domain/usecases/get_historical_market_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/models/ticket_model.dart';
import '../../data/models/coin_model.dart';
import '../../data/models/historical_market_model.dart';

part 'grafic_event.dart';
part 'grafic_state.dart';
part 'grafic_bloc.freezed.dart';

class GraficBloc extends Bloc<GraficEvent, GraficState> {
  GetHistoricalMarketUseCase getHistoricalMarketUseCase;
  GetCoinInfoUseCase getCoinInfoUseCase;

  GraficBloc(this.getHistoricalMarketUseCase, this.getCoinInfoUseCase)
      : super(GraficState.initial()) {
    on<GraficEvent>((event, emit) async {
      await event.map(
        getHistoricalMarket: (event) async =>
            await _getHistoricalMarket(emit, event.id),
        changeInterval: (event) async =>
            await _changeInterval(emit, event.interval),
        changeVsCurrency: (event) async =>
            await _changeVsCurrency(emit, event.vsCurrency),
        getCoinInfo: (event) async => await _getCoinInfo(emit, event.id),
      );
    });
  }

  //MARK: events
  _getHistoricalMarket(Emitter<GraficState> emit, String id) async {
    emit(state.copyWith(status: HistoricalMarketStatus.loading));

    final (from, to) = state.interval.rangeInUnix;

    final response = await getHistoricalMarketUseCase(
        GetHistoricalMarketParams(from, to, id, state.vsCurrency));

    response.fold(
        (l) => emit(state.copyWith(status: HistoricalMarketStatus.failure)),
        (r) => emit(state.copyWith(
            historicalMarketModel: r as HistoricalMarketModel,
            status: HistoricalMarketStatus.loaded)));
  }

  _changeInterval(Emitter<GraficState> emit, HistoryInterval interval) async {
    emit(state.copyWith(interval: interval));
  }

  _changeVsCurrency(Emitter<GraficState> emit, String vsCurrency) async {
    emit(state.copyWith(vsCurrency: vsCurrency));
  }

  _getCoinInfo(Emitter<GraficState> emit, String id) async {
    emit(state.copyWith(status: HistoricalMarketStatus.loading));

    final response = await getCoinInfoUseCase(id);

    response.fold(
        (l) => emit(state.copyWith(status: HistoricalMarketStatus.failure)),
        (r) => emit(state.copyWith(
            coinModel: r as CoinModel, status: HistoricalMarketStatus.loaded)));
  }
}
