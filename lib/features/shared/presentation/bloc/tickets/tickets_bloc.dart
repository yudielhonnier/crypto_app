import 'package:crypto_app/core/bloc/base_bloc.dart';
import 'package:crypto_app/core/bloc/base_bloc_event.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/domain/entities/ticket.dart';
import 'package:crypto_app/features/shared/domain/usecase/add_ticket_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends BaseBloc<TicketsEvent, TicketsState, TicketModel> {
  final AddTicketUseCase _addTicketUseCase;
  TicketsBloc(this._addTicketUseCase)
      : super(BaseBlocState.init(TicketModel.mockTicket)) {
    on<_AddTicket>(_onAddTicket);
  }

  void _onAddTicket(TicketsEvent event, Emitter<BaseBlocState> emit) async {
    emit(const BaseBlocState.loading());
    //todo:add ticket to local
    final response = await _addTicketUseCase(event.ticket);

    response.fold((l) => emit(BaseBlocState.failure(l)),
        (r) => emit(BaseBlocState.next(r)));
  }
}
