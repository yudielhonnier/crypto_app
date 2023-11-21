import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart_statictics.dart';
import 'package:crypto_app/features/shared/data/models/chart_circular_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({
    Key? key,
    required this.data,
    required this.isMovile,
  }) : super(key: key);

  final List<ChartCircularData> data;
  final bool isMovile;

  @override
  Widget build(BuildContext context) {
    late double heightContext = context.height;
    return Stack(children: [
      Transform.translate(
          offset: Offset(0, isMovile ? heightContext / 6 : heightContext / 3),
          child: const CircularChartStatictics(size: Size(500, 500))),
      SfCircularChart(series: <CircularSeries>[
        // Renders doughnut chart
        DoughnutSeries<ChartCircularData, String>(
            radius: '130',
            innerRadius: '120',
            dataSource: data,
            pointColorMapper: (ChartCircularData data, _) => data.color,
            xValueMapper: (ChartCircularData data, _) => data.x,
            yValueMapper: (ChartCircularData data, _) => data.y)
      ]),
    ]);
  }
}
