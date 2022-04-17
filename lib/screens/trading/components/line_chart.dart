


part of '../../../components/widgets.dart';

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
      this.color =  Colors.red,
      // this.color = const Color(0xff02d39a),
      this.loading = false,
      this.error = false,
      this.width=20,
      this.height=20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
       children: [
      Opacity(
        opacity: data.length -1 > 0 && !loading & !error ? 1 : 0.3,
        child: SizedBox(
          width: width,
          height:height,
          child: LineChart(
            mainData(data),
                // : Utils.demoGraphData),
            swapAnimationDuration:const Duration(seconds: 0),
          ),
        ),
      ),
      if (loading)
       const Center(
          child: CircularProgressIndicator(),
        )
      else if (error || data.length -1 == 0)
        Center(
          child: Text('LocaleKeys.noResults.tr()',
              style: Theme.of(context).textTheme.headline3),
        )
    ]);
  }

  LineChartData mainData(List<double> data) {
    return LineChartData(
      gridData: FlGridData(
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
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: data.length.toDouble() - 1,
      minY: data.reduce(min).toDouble(),
      maxY: data.reduce(max).toDouble(),
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
            gradient: LinearGradient(colors: [darkTheme.colorScheme.secondary.withOpacity(.03), darkTheme.colorScheme.secondary.withOpacity(.7)] ),
          ),
        ),
      ],
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