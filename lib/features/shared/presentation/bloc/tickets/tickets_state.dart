part of 'tickets_bloc.dart';

enum TicketStatus {
  initial,
  loading,
  loaded,
  listLoaded,
  failure,
  alreadyExist
}

class TicketsState extends Equatable {
  const TicketsState({
    required this.status,
    required this.ticketModel,
    required this.balance,
    required this.message,
  });

  final TicketStatus status;
  final TicketModel ticketModel;
  final MyBalance balance;
  final String message;

  static TicketsState initial() => TicketsState(
        status: TicketStatus.initial,
        ticketModel: TicketModel.mockTicket,
        balance: MyBalance(tickets: const []),
        message: "",
      );

  TicketsState copyWith({
    TicketStatus? status,
    TicketModel? ticketModel,
    MyBalance? balance,
    String? message,
  }) =>
      TicketsState(
          status: status ?? this.status,
          ticketModel: ticketModel ?? this.ticketModel,
          balance: balance ?? this.balance,
          message: message ?? this.message);

  @override
  List<Object?> get props => [status, ticketModel, balance, message];
}
