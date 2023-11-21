part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.ticketsLoaded({required List<Ticket> photo}) =
      _TicketsLoaded;
  const factory TicketsState.ticketAdded({required List<Ticket> photo}) =
      _TicketAdded;
}
