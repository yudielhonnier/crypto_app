import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/round.dart';
import '../../data/models/coin_model.dart';
import '../bloc/grafic_bloc.dart';

class LinearChartStatictics extends StatelessWidget {
  const LinearChartStatictics({
    Key? key,
    required this.higAmount,
    required this.lowAmount,
    required this.ticket,
    required this.coin,
  }) : super(key: key);

  final double higAmount;
  final double lowAmount;
  final TicketModel ticket;
  final CoinModel coin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Current price',
              style: TextStyle(
                fontSize: 16,
                color: darkTheme.colorScheme.secondary,
              ),
            ),
            const Spacer(),
            const Text(
              'Hig',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            const SizedBox(
              width: 36,
            ),
            Text('Low',
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            // Text(yround(ticket.priceChangePercentage24H).toString() + '%',
            //     style: TextStyle(
            //       fontSize: 12,
            //       color: colorByPrice(ticket.priceChangePercentage24H),
            //     )),
            // const SizedBox(
            //   width: 10,
            // ),
            // Text(yround(ticket.priceChange24H).toString(),
            //     style: TextStyle(
            //         fontSize: 16,
            //         color: darkTheme.colorScheme.secondary,
            //         fontWeight: FontWeight.bold)),
            Builder(builder: (context) {
              final graficBloc = context.watch<GraficBloc>();
              if (graficBloc.state.status == HistoricalMarketStatus.loading) {
                return const CircularProgressIndicator(
                  color: Colors.white,
                );
              }
              if (graficBloc.state.status == HistoricalMarketStatus.loaded) {
                return Text(
                  graficBloc.state.coinModel
                      .marketData['current_price'][graficBloc.state.vsCurrency]
                      .toString(),
                  style: const TextStyle(fontSize: 26),
                );
              }
              return Container();
            }),
            Expanded(child: Container()),
            Text(
              yround(higAmount).toString(),
              style: const TextStyle(fontSize: 16, color: Colors.green),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(yround(lowAmount).toString(),
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}
