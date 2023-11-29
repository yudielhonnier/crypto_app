part of 'tickets_bloc.dart';

@freezed
class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.addTicket(TicketModel ticket) = _AddTicket;
  const factory TicketsEvent.deleteTicket(TicketModel ticket) = _DeleteTicket;
  const factory TicketsEvent.getAllTickets() = _GetAllTickets;
  const factory TicketsEvent.toastReaded() = _ToastReaded;
}
