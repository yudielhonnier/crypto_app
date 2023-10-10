part of 'markets_bloc.dart';

@immutable
sealed class MarketsEvent {}

class GetMarketsEvent extends MarketsEvent {}
