import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/domain/entities/ticket.dart';
import 'package:fpdart/fpdart.dart';

abstract class TicketRepository {
  Future<Either<Failure, TicketModel>> addTicket(TicketModel ticket);
}
