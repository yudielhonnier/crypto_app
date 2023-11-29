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
  TicketsState({
    required this.status,
    required this.ticketModel,
    required this.ticketList,
    required this.message,
  });

  final TicketStatus status;
  final TicketModel ticketModel;
  List<TicketModel> ticketList = [];
  String message = "";

  static TicketsState initial() => TicketsState(
        status: TicketStatus.initial,
        ticketModel: TicketModel.mockTicket,
        ticketList: const [],
        message: "",
      );

  TicketsState copyWith({
    TicketStatus? status,
    TicketModel? ticketModel,
    List<TicketModel>? ticketList,
    String? message,
  }) =>
      TicketsState(
          status: status ?? this.status,
          ticketModel: ticketModel ?? this.ticketModel,
          ticketList: ticketList ?? [],
          message: message ?? "");

  @override
  List<Object?> get props => [status, ticketModel];
}
