import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TicketLocalDataSource {
  Future<void> cacheTickets();

  Future<TicketModel> addTicket(TicketModel ticket);
}

class TicketLocalDataSourceImpl implements TicketLocalDataSource {
  final SharedPreferences sharedPreferences;

  TicketLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<TicketModel> addTicket(TicketModel ticket) {
    //todo: save ticket in db
    return Future(() => ticket);
  }

  @override
  Future<void> cacheTickets() {
    // TODO: implement cacheTickets
    throw UnimplementedError();
  }
}
