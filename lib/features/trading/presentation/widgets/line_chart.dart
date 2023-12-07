import 'dart:math' as math;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/grafic_bloc.dart';

class LineChartWidget extends StatelessWidget {
  final List<double> data;
  final Color color;
  final bool loading;
  final bool error;
  final double width;
  final double height;

  const LineChartWidget(
      {Key? key,
      this.data = const [],
      this.color = Colors.red,
      // this.color = const Color(0xff02d39a),
      this.loading = false,
      this.error = false,
      this.width = 20,
      this.height = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      Opacity(
        opacity: data.isNotEmpty && !loading & !error ? 1 : 0.3,
        child: SizedBox(
          width: width,
          height: height,
          child: data.isNotEmpty
              ? LineChart(
                  key: GlobalKey(),
                  mainData(data, context),
                  // : Utils.demoGraphData),
                  swapAnimationDuration: const Duration(seconds: 0),
                )
              : const Center(
                  child: Text('No data reached'),
                ),
        ),
      ),
      if (loading)
        const Center(
          child: CircularProgressIndicator(),
        )
      else if (error || data.length - 1 == 0)
        Center(
          child: Text('LocaleKeys.noResults.tr()',
              style: Theme.of(context).textTheme.displaySmall),
        )
    ]);
  }

  LineChartData mainData(List<double> data, BuildContext context) {
    final graficBloc = context.watch<GraficBloc>();

    return LineChartData(
      gridData: _buildFLGridData(),

      ///show the values of the x and y
      titlesData: _buildTitlesData(graficBloc),

      borderData: FlBorderData(
        show: true,
      ),
      minX: 0,
      maxX: graficBloc.state.interval.daysInterval() * 1.0,
      minY: data.reduce(math.min).toDouble(),
      maxY: data.reduce(math.max).toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: listData(data),
          color: color,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            // gradient: LinearGradient(colors: [color.withOpacity(.01), color.withOpacity(.3)] ),
            gradient: LinearGradient(colors: [
              darkTheme.colorScheme.secondary.withOpacity(.03),
              darkTheme.colorScheme.secondary.withOpacity(.7)
            ]),
          ),
        ),
      ],
    );
  }

  FlGridData _buildFLGridData() {
    return FlGridData(
      show: true,
      drawVerticalLine: false,
      drawHorizontalLine: false,
      horizontalInterval: 4,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    );
  }

  FlTitlesData _buildTitlesData(GraficBloc graficBloc) {
    int daysInterval = graficBloc.state.interval.daysInterval();

    return FlTitlesData(
      show: true, // Set to true to display titles
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: true, // Set to true to display bottom titles
        getTitlesWidget: (value, meta) => Text(
          value.toString(),
          style: const TextStyle(
              color: Color(0xff7589a2),
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        reservedSize: 20,
        interval: daysInterval == 1 ? 1.0 : (daysInterval ~/ 4).toDouble(),
      )),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    );
  }

  List<FlSpot> listData(List<double> data) {
    return data
        .mapIndexed((e, i) => FlSpot(i.toDouble(), e.toDouble()))
        .toList();
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

double _calculateRangeInterval(GraficBloc graficBloc) {
  return 0.0;
}
