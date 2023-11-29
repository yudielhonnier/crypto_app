import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/usecases/usecase.dart';
import '../../data/models/ticket_model.dart';
import '../repository/ticket_repository.dart';

class GetTicketByIdUseCase implements Usecase<TicketModel, String> {
  final TicketRepository _ticketRepository;

  GetTicketByIdUseCase(this._ticketRepository);

  @override
  Future<Either<Failure, TicketModel>> call(String params) {
    return _ticketRepository.getTicketById(params);
  }
}
