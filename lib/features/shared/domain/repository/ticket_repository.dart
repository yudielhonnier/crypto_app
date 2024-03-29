import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class TicketRepository {
  Future<Either<Failure, TicketModel>> addTicket(TicketModel ticket);

  Future<Either<Failure, TicketModel>> getTicketById(String id);

  Future<Either<Failure, void>> deleteTicketById(String id);

  Future<Either<Failure, List<TicketModel>>> getAllTickets();
}
