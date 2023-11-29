import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/usecases/usecase.dart';
import '../repository/ticket_repository.dart';

class DeleteTicketByIdUseCase implements Usecase<void, String> {
  final TicketRepository _ticketRepository;

  DeleteTicketByIdUseCase(this._ticketRepository);

  @override
  Future<Either<Failure, void>> call(String params) {
    return _ticketRepository.deleteTicketById(params);
  }
}
