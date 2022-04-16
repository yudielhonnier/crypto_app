part of 'widgets.dart';

class StepAreaChart extends StatelessWidget {
  const StepAreaChart({
    Key? key,
    required this.chartData,
  }) : super(key: key);

  final List<StepAreaData> chartData;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        plotAreaBackgroundColor:
            darkTheme.colorScheme.primary,
        plotAreaBorderWidth: 0,
        primaryXAxis: NumericAxis(
            //Hide the gridlines of x-axis
            majorGridLines: MajorGridLines(width: 0),
            //Hide the axis line of x-axis
            axisLine: AxisLine(width: 0),
            isVisible: false),
        primaryYAxis: NumericAxis(
            //Hide the gridlines of y-axis
            majorGridLines: MajorGridLines(width: 0),
            //Hide the axis line of y-axis
            axisLine: AxisLine(width: 0),
            isVisible: false),
        series: <ChartSeries<StepAreaData, num>>[
          StepAreaSeries<StepAreaData, num>(
            dataSource: chartData,
            color: Colors.green,
            borderColor:
                const Color.fromRGBO(75, 135, 185, 0),
            borderWidth: 2,
            name: 'High',
            xValueMapper: (StepAreaData sales, _) =>
                sales.x,
            yValueMapper: (StepAreaData sales, _) =>
                sales.high,
          ),
          StepAreaSeries<StepAreaData, num>(
            dataSource: chartData,
            color: Colors.red,
            borderColor: const Color.fromRGBO(
                192, 108, 132, 0),
            borderWidth: 2,
            name: 'Low',
            xValueMapper: (StepAreaData sales, _) =>
                sales.x,
            yValueMapper: (StepAreaData sales, _) =>
                sales.low,
          )
        ]);
  }
}

