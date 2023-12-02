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

        if (ticketsBloc.state.status == TicketStatus.loading) {
          return _listLoading(ticketsBloc);
        }

        return _listLoaded(ticketsBloc);
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
                '${yround(totalPriceChangePercentage24H)} % ',
                style: TextStyle(
                    fontSize: 20,
                    color: colorByPrice(totalPriceChangePercentage24H)),
              ),
              Text('${yround(totalPriceChange24H)}',
                  style: TextStyle(
                      fontSize: 20,
                      color: darkTheme.colorScheme.secondary,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }

  Widget _listLoading(TicketsBloc ticketsBloc) {
    return const Row(
      children: [
        CircularProgressIndicator(),
      ],
    );
  }
}
