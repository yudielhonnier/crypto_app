import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/color_by_price.dart';
import '../../../../core/helpers/round.dart';
import '../../../shared/presentation/bloc/tickets/tickets_bloc.dart';

class CircularChartStatictics extends StatelessWidget {
  const CircularChartStatictics({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(builder: (context) {
        final ticketsBloc = context.watch<TicketsBloc>();

        if (ticketsBloc.state.status == TicketStatus.listLoaded ||
            ticketsBloc.state.status == TicketStatus.loaded) {
          return _listLoaded(ticketsBloc);
        }

        return Container();
      }),
    );
  }

  SizedBox _listLoaded(TicketsBloc ticketsBloc) {
    final totalCurrentPrice = ticketsBloc.state.balance.totalCurrentPrice;
    final totalPriceChange24H = ticketsBloc.state.balance.totalPriceChange24H;
    final totalPriceChangePercentage24H =
        ticketsBloc.state.balance.totalPriceChangePercentage24H;

    return SizedBox(
      height: 70,
      child: Column(
        children: [
          Text(
            '\$ ${yround(totalCurrentPrice)}',
            style: const TextStyle(fontSize: 36),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${yround(totalPriceChange24H)} % ',
                style: TextStyle(
                    fontSize: 16, color: colorByPrice(totalPriceChange24H)),
              ),
              Text('${yround(totalPriceChangePercentage24H)}',
                  style: TextStyle(
                      fontSize: 16,
                      color: darkTheme.colorScheme.secondary,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
