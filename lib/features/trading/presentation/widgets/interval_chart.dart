import 'package:crypto_app/features/trading/presentation/bloc/grafic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntervalChart extends StatelessWidget {
  const IntervalChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HistoryInterval> valuesInterval = HistoryInterval.values;
    return ListView.builder(
        itemCount: valuesInterval.length,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final graficBloc = context.watch<GraficBloc>();

          return GestureDetector(
            onTap: () {
              graficBloc.add(GraficEvent.changeInterval(valuesInterval[index]));
              graficBloc.add(GraficEvent.getHistoricalMarket(
                  graficBloc.state.coinModel.id));
            },
            child: Card(
              color: valuesInterval[index] == graficBloc.state.interval
                  ? darkTheme.colorScheme.secondary
                  : darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 20,
                  child: Text(valuesInterval[index].firstLetterUpperCase())),
            ),
          );
        });
  }
}
