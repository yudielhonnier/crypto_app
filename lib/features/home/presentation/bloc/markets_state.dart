part of 'markets_bloc.dart';

@immutable
sealed class MarketsState {}

final class Empty extends MarketsState {}

final class Loading extends MarketsState {}

final class Loaded extends MarketsState {
  final List<MarketModel> markets;

  Loaded({required this.markets});
}

final class Error extends MarketsState {
  final String message;

  Error({required this.message});
}
