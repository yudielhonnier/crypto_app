class Coin {
  final String id;
  final String symbol;
  final String name;
  final Map<String, dynamic> marketData;

  Coin(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.marketData});
}
