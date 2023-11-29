import 'package:crypto_app/core/resources/ticket_db_helper.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TicketLocalDataSource {
  Future<void> cacheTickets();

  Future<TicketModel> getTicket(String id);
  Future<List<TicketModel>> getAllTickets();
  Future<void> updateTicket(TicketModel ticket);
  Future<void> deleteTicket(String id);
  Future<void> deleteAllTickets();

  Future<TicketModel> addTicket(TicketModel ticket);
}

class TicketLocalDataSourceImpl implements TicketLocalDataSource {
  final SharedPreferences sharedPreferences;
  final TicketDatabaseHelper ticketDB;

  TicketLocalDataSourceImpl(
      {required this.sharedPreferences, required this.ticketDB});
  @override
  Future<TicketModel> addTicket(TicketModel ticket) async {
    return ticketDB.addTicket(ticket);
  }

  @override
  Future<void> cacheTickets() {
    // TODO: implement cacheTickets
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAllTickets() {
    // TODO: implement deleteAllTickets
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTicket(String id) {
    return ticketDB.deleteTicket(id);
  }

  @override
  Future<List<TicketModel>> getAllTickets() {
    return ticketDB.getAllTickets();
  }

  @override
  Future<TicketModel> getTicket(String id) {
    return ticketDB.getTicket(id);
  }

  @override
  Future<void> updateTicket(TicketModel ticket) {
    // TODO: implement updateTicket
    throw UnimplementedError();
  }
}
