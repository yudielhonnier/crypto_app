import 'package:crypto_app/features/shared/data/models/my_balance.dart';
import 'package:flutter/material.dart';

import '../../features/shared/data/models/chart_circular_data.dart';
import 'extensions.dart';

List<ChartCircularData> data = [
  ChartCircularData('CHN', 12, Colors.red),
  ChartCircularData('GER', 15, Colors.green),
  ChartCircularData('RUS', 30, Colors.yellow),
  ChartCircularData('BRZ', 6.4, Colors.blue),
  ChartCircularData('IND', 14, Colors.white)
];

List<ChartCircularData> getChartCircularData(MyBalance balance) {
  return balance.tickets
      .map(
        (t) => ChartCircularData(
            t.id,
            t.priceChangePercentage24H / balance.totalPriceChangePercentage24H,
            t.chartColorNumber != null
                ? Color(t.chartColorNumber!)
                : const Color(0x00000000).ramdomColor()),
      )
      .toList();
}
