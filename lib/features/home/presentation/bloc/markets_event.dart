part of 'markets_bloc.dart';

@immutable
sealed class MarketsEvent {}

class GetMarketsEvent extends MarketsEvent {
  final int page;

  GetMarketsEvent({required this.page});
}
