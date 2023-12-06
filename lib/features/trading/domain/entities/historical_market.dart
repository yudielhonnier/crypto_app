class HistoricalMarket {
  const HistoricalMarket({
    required this.prices,
    required this.marketCaps,
    required this.totalVolumes,
  });

  final List<List<num>> prices;
  final List<List<num>> marketCaps;
  final List<List<num>> totalVolumes;
}
