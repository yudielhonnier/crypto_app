part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.ticketsLoaded(
      {required List<TicketModel> ticketsList}) = _TicketsLoaded;
  const factory TicketsState.ticketAdded({required TicketModel ticket}) =
      _TicketAdded;
}
