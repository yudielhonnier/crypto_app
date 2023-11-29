import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/shared/data/data-source/local/ticket_local_data_source.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/domain/repository/ticket_repository.dart';
import 'package:fpdart/src/either.dart';

class TicketRepositoryImpl implements TicketRepository {
  final TicketLocalDataSourceImpl localDataSource;

  TicketRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, TicketModel>> addTicket(TicketModel ticket) async {
    return Right(await localDataSource.addTicket(ticket));
  }

  @override
  Future<Either<Failure, TicketModel>> getTicketById(String id) async {
    return Right(await localDataSource.getTicket(id));
  }

  @override
  Future<Either<Failure, void>> deleteTicketById(String id) async {
    return Right(await localDataSource.deleteTicket(id));
  }

  @override
  Future<Either<Failure, List<TicketModel>>> getAllTickets() async {
    return Right(await localDataSource.getAllTickets());
  }
}
