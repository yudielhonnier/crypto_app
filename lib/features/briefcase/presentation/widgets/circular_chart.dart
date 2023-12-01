import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart_statictics.dart';
import 'package:crypto_app/features/shared/data/models/chart_circular_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/helpers/chart_data_helper.dart';
import '../../../shared/presentation/bloc/tickets/tickets_bloc.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({
    Key? key,
    required this.isMovile,
  }) : super(key: key);

  final bool isMovile;

  @override
  Widget build(BuildContext context) {
    late double heightContext = context.height;
    return Builder(builder: (context) {
      final ticketsBloc = context.watch<TicketsBloc>();

      return Stack(children: [
        Transform.translate(
            offset: Offset(0, isMovile ? heightContext / 6 : heightContext / 3),
            //text inside the circle
            child: const CircularChartStatictics(size: Size(500, 500))),
        SfCircularChart(series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartCircularData, String>(
              radius: '130',
              innerRadius: '120',
              dataSource: getChartCircularData(ticketsBloc.state.balance),
              pointColorMapper: (ChartCircularData data, _) => data.color,
              xValueMapper: (ChartCircularData data, _) => data.x,
              yValueMapper: (ChartCircularData data, _) => data.y)
        ]),
      ]);
    });
  }
}
