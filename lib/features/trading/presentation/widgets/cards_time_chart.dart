import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:crypto_app/features/trading/presentation/bloc/historical_market_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsTimeChart extends StatelessWidget {
  const CardsTimeChart({
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
          final historicalMarketBloc = context.watch<HistoricalMarketBloc>();
          final ticketsBloc = context.watch<TicketsBloc>();

          return GestureDetector(
            onTap: () {
              historicalMarketBloc.add(
                  HistoricalMarketEvent.changeInterval(valuesInterval[index]));
              historicalMarketBloc.add(
                  HistoricalMarketEvent.getHistoricalMarket(
                      ticketsBloc.state.ticketModel));
            },
            child: Card(
              color: darkTheme.colorScheme.primary,
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
