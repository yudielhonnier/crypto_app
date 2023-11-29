import 'package:crypto_app/features/shared/data/models/ticket_model.dart';

class MyBalance {
  final List<TicketModel> tickets;
  double totalCurrentPrice;
  double totalPriceChange24H;
  double totalPriceChangePercentage24H;

  MyBalance(this.totalCurrentPrice, this.totalPriceChange24H,
      this.totalPriceChangePercentage24H,
      {required this.tickets}) {
    for (var t in tickets) {
      totalCurrentPrice += t.currentPrice;
      totalPriceChange24H += t.priceChange24H;
      totalPriceChangePercentage24H += t.priceChangePercentage24H;
    }
    MyBalance(
        totalCurrentPrice, totalPriceChange24H, totalPriceChangePercentage24H,
        tickets: tickets);
  }
}
