import 'package:crypto_app/features/shared/data/models/step_area_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class StepAreaChart extends StatelessWidget {
  const StepAreaChart({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<StepAreaData> chartData;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        plotAreaBackgroundColor: darkTheme.colorScheme.primary,
        plotAreaBorderWidth: 0,
        primaryXAxis: NumericAxis(
            //Hide the gridlines of x-axis
            majorGridLines: const MajorGridLines(width: 0),
            //Hide the axis line of x-axis
            axisLine: const AxisLine(width: 0),
            isVisible: false),
        primaryYAxis: NumericAxis(
            //Hide the gridlines of y-axis
            majorGridLines: const MajorGridLines(width: 0),
            //Hide the axis line of y-axis
            axisLine: const AxisLine(width: 0),
            isVisible: false),
        series: <ChartSeries<StepAreaData, num>>[
          StepAreaSeries<StepAreaData, num>(
            dataSource: chartData,
            color: Colors.green,
            borderColor: const Color.fromRGBO(75, 135, 185, 0),
            borderWidth: 2,
            name: 'High',
            xValueMapper: (StepAreaData sales, _) => sales.x,
            yValueMapper: (StepAreaData sales, _) => sales.high,
          ),
          StepAreaSeries<StepAreaData, num>(
            dataSource: chartData,
            color: Colors.red,
            borderColor: const Color.fromRGBO(192, 108, 132, 0),
            borderWidth: 2,
            name: 'Low',
            xValueMapper: (StepAreaData sales, _) => sales.x,
            yValueMapper: (StepAreaData sales, _) => sales.low,
          )
        ]);
  }
}
