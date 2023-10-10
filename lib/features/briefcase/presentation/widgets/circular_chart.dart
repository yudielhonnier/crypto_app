import 'package:crypto_app/features/shared/models/chart_circular_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<ChartCircularData> data;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(series: <CircularSeries>[
      // Renders doughnut chart
      DoughnutSeries<ChartCircularData, String>(
          radius: '130',
          innerRadius: '120',
          dataSource: data,
          pointColorMapper: (ChartCircularData data, _) => data.color,
          xValueMapper: (ChartCircularData data, _) => data.x,
          yValueMapper: (ChartCircularData data, _) => data.y)
    ]);
  }
}
