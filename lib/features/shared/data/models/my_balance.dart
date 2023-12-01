import 'package:crypto_app/features/shared/data/models/ticket_model.dart';

class MyBalance {
  final List<TicketModel> tickets;
  double totalCurrentPrice = 0.0;
  double totalPriceChange24H = 0.0;
  double totalPriceChangePercentage24H = 0.0;

  MyBalance({required this.tickets}) {
    for (var t in tickets) {
      totalCurrentPrice += t.currentPrice;
      totalPriceChange24H += t.priceChange24H;
      totalPriceChangePercentage24H += t.priceChangePercentage24H;
    }
  }
}
