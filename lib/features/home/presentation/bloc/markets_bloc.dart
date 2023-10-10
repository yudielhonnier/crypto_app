import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/domain/usecase/get_markets.dart';
import 'package:meta/meta.dart';

part 'markets_event.dart';
part 'markets_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class MarketsBloc extends Bloc<MarketsEvent, MarketsState> {
  final GetMarketsUseCase _getMarketsUseCase;

  MarketsBloc(this._getMarketsUseCase) : super(Empty()) {
    on<GetMarketsEvent>(onGetMarkets);
  }

  void onGetMarkets(MarketsEvent event, Emitter<MarketsState> emit) async {
    emit(Loading());
    final response = await _getMarketsUseCase(noParams);

    response.fold(
        (l) => emit(Error(message: l.message)),
        (r) => r.isEmpty
            ? emit(Empty())
            : emit(Loaded(markets: r as List<MarketModel>)));
  }
}
