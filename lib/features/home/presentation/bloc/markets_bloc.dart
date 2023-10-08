import 'package:bloc/bloc.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/domain/entities/market.dart';
import 'package:crypto_app/features/home/domain/usecase/get_markets_use_case.dart';
import 'package:meta/meta.dart';

part 'markets_event.dart';
part 'markets_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';

class MarketsBloc extends Bloc<MarketsEvent, MarketsState> {
  final GetMarketsUseCase _getMarketsUseCase;

  MarketsBloc(this._getMarketsUseCase) : super(Empty(const [])) {
    on<GetMarketsEvent>(onGetMarkets);
  }

  void onGetMarkets(MarketsEvent event, Emitter<MarketsState> emit) async {
    int page = 0;
    emit(Loading());
    final response = await _getMarketsUseCase(page);

    response.fold(
        (l) => emit(Error(message: l.message)),
        (r) => r.isEmpty
            ? emit(Empty(const []))
            : emit(Loaded(markets: r as List<MarketModel>)));
  }
}
