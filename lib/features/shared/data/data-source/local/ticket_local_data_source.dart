import 'package:crypto_app/core/resources/ticket_db_helper.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

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

  TicketLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<TicketModel> addTicket(TicketModel ticket) async {
    return TicketDatabaseHelper().addTicket(ticket);
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
    // TODO: implement deleteTicket
    throw UnimplementedError();
  }

  @override
  Future<List<TicketModel>> getAllTickets() {
    // TODO: implement getAllTickets
    throw UnimplementedError();
  }

  @override
  Future<TicketModel> getTicket(String id) {
    // TODO: implement getTicket
    throw UnimplementedError();
  }

  @override
  Future<void> updateTicket(TicketModel ticket) {
    // TODO: implement updateTicket
    throw UnimplementedError();
  }
}
