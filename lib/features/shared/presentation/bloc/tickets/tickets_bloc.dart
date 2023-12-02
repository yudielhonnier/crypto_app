import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/domain/usecase/add_ticket_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/delete_ticket_by_id_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/get_all_tickets_use_case.dart';
import 'package:crypto_app/features/shared/domain/usecase/get_ticket_by_id_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/my_balance.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc(this._addTicketUseCase, this._getTicketByIdUseCase,
      this._deleteTicketByIdUseCase, this._getAllTicketsUseCase)
      : super(TicketsState.initial()) {
    on<TicketsEvent>(
      (event, emit) async {
        await event.map(
            addTicket: (event) async => await _onAddTicket(event.ticket, emit),
            deleteTicket: (event) async =>
                await _onDeleteTicket(event.ticket, emit),
            getAllTickets: (event) async => await _onGetAllTickets(emit),
            toastReaded: (event) => _onToastReaded(emit));
      },
    );
  }

  //MARK - Properties

  final AddTicketUseCase _addTicketUseCase;
  final GetTicketByIdUseCase _getTicketByIdUseCase;
  final DeleteTicketByIdUseCase _deleteTicketByIdUseCase;
  final GetAllTicketsUseCase _getAllTicketsUseCase;

  //MARK- Methods

  Future<void> _onAddTicket(
      TicketModel ticket, Emitter<TicketsState> emit) async {
    bool isPresent = false;
    emit(state.copyWith(status: TicketStatus.loading));

    final existTicket = await _getTicketByIdUseCase(ticket.id);
    existTicket.fold((l) => null, (r) => isPresent = r.id != "");

    if (!isPresent) {
      final response = await _addTicketUseCase(ticket);

      response.fold(
          (l) => emit(
              state.copyWith(status: TicketStatus.failure, message: l.message)),
          (r) {
        emit(state.copyWith(status: TicketStatus.loaded, ticketModel: r));
      });
      await Future(() => print("DEBBUG: TICKET ADDED ${Right(response)}"));
    } else {
      emit(state.copyWith(
          status: TicketStatus.alreadyExist, ticketModel: ticket));
    }
  }

  Future<void> _onDeleteTicket(
      TicketModel ticket, Emitter<TicketsState> emit) async {
    emit(state.copyWith(status: TicketStatus.loading));
    await _deleteTicketByIdUseCase(ticket.id);
    print("DEBBUG: TICKET DELETED");
  }

  Future<void> _onToastReaded(Emitter<TicketsState> emit) async {
    emit(state.copyWith(status: TicketStatus.initial));
  }

  Future<void> _onGetAllTickets(Emitter<TicketsState> emit) async {
    print("DEBBUG: GETTING ALL TICKETS");
    emit(state.copyWith(status: TicketStatus.loading));
    final myTickets = await _getAllTicketsUseCase(const NoParams());

    myTickets.fold(
        (l) => emit(
            state.copyWith(status: TicketStatus.failure, message: l.message)),
        (r) => emit(state.copyWith(
            status: TicketStatus.listLoaded, balance: MyBalance(tickets: r))));
  }
}
