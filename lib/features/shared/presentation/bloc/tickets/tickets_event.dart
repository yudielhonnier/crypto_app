part of 'tickets_bloc.dart';

@freezed
class TicketsEvent extends BaseBlocEvent with _$TicketsEvent {
  const factory TicketsEvent.addTicket(TicketModel ticket) = _AddTicket;
}
