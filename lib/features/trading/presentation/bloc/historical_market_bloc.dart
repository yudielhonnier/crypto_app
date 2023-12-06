import 'package:bloc/bloc.dart';
import 'package:crypto_app/features/trading/domain/usecases/get_historical_market_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/models/ticket_model.dart';
import '../../data/models/historical_market_model.dart';

part 'historical_market_event.dart';
part 'historical_market_state.dart';
part 'historical_market_bloc.freezed.dart';

class HistoricalMarketBloc
    extends Bloc<HistoricalMarketEvent, HistoricalMarketState> {
  GetHistoricalMarketUseCase getHistoricalMarketUseCase;

  HistoricalMarketBloc(this.getHistoricalMarketUseCase)
      : super(HistoricalMarketState.initial()) {
    on<HistoricalMarketEvent>((event, emit) async {
      await event.map(
        getHistoricalMarket: (event) async =>
            await _getHistoricalMarket(emit, event.ticket),
        changeInterval: (event) async =>
            await _changeInterval(emit, event.interval),
        changeVsCurrency: (event) async =>
            await _changeVsCurrency(emit, event.vsCurrency),
      );
    });
  }

  //MARK: events
  _getHistoricalMarket(
      Emitter<HistoricalMarketState> emit, TicketModel ticket) async {
    emit(state.copyWith(status: HistoricalMarketStatus.loading));

    final to = DateTime.now();

    final from = to.subtract(const Duration(days: 31));

    final response = await getHistoricalMarketUseCase(GetHistoricalMarketParams(
        from.toUtc().millisecondsSinceEpoch,
        to.toUtc().millisecondsSinceEpoch,
        ticket.id,
        state.vsCurrency));

    print('DEBBUG: getHistoricalMarket - ${Right(response)} ');
    print('DEBBUG: state.vsCurrency - ${state.vsCurrency} ');
    print('DEBBUG: ticketid - ${ticket.id} ');
    print('DEBBUG: from - ${from.toUtc().millisecondsSinceEpoch}');
    print('DEBBUG: to - ${to.toUtc().millisecondsSinceEpoch}');
    response.fold(
        (l) => emit(state.copyWith(status: HistoricalMarketStatus.failure)),
        (r) => emit(state.copyWith(
            model: r as HistoricalMarketModel,
            status: HistoricalMarketStatus.loaded)));
  }

  _changeInterval(
      Emitter<HistoricalMarketState> emit, HistoryInterval interval) async {
    emit(state.copyWith(interval: interval));
  }

  _changeVsCurrency(
      Emitter<HistoricalMarketState> emit, String vsCurrency) async {
    emit(state.copyWith(vsCurrency: vsCurrency));
  }
}
