import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/domain/entities/ticket.dart';
import 'package:crypto_app/features/shared/domain/repository/ticket_repository.dart';
import 'package:fpdart/fpdart.dart';

class AddTicketUseCase implements Usecase<TicketModel, TicketModel> {
  final TicketRepository ticketRepository;

  AddTicketUseCase(this.ticketRepository);

  @override
  Future<Either<Failure, TicketModel>> call(TicketModel ticket) =>
      ticketRepository.addTicket(ticket);
}
