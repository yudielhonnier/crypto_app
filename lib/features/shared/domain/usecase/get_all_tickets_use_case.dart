import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:crypto_app/features/shared/domain/repository/ticket_repository.dart';
import 'package:fpdart/src/either.dart';

import '../../data/models/ticket_model.dart';

class GetAllTicketsUseCase extends Usecase<List<TicketModel>, NoParams> {
  GetAllTicketsUseCase(this.ticketRepository);

  final TicketRepository ticketRepository;

  @override
  Future<Either<Failure, List<TicketModel>>> call(NoParams params) {
    return ticketRepository.getAllTickets();
  }
}
