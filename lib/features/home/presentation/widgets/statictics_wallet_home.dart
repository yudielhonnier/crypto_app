import 'package:crypto_app/config/router/my_router.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/color_by_price.dart';
import '../../../../core/helpers/round.dart';

class StaticticsWalletHome extends StatelessWidget {
  const StaticticsWalletHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'PORTAFOLIO',
              style: TextStyle(
                  fontSize: 13,
                  color: darkTheme.colorScheme.secondary,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              splashRadius: 16,
              onPressed: () {
                context.push(MyRouter.briefcaseRoute);
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Builder(builder: (context) {
          final ticketsBloc = context.watch<TicketsBloc>();

          if (ticketsBloc.state.status == TicketStatus.loading) {
            return _listLoading(ticketsBloc);
          }

          if (ticketsBloc.state.status == TicketStatus.loaded) {
            ticketsBloc.add(const TicketsEvent.getAllTickets());
          }

          return _listLoaded(ticketsBloc);
        }),
      ],
    );
  }

  Widget _listLoaded(TicketsBloc ticketsBloc) {
    final totalCurrentPrice = ticketsBloc.state.balance.totalCurrentPrice;
    final totalPriceChange24H = ticketsBloc.state.balance.totalPriceChange24H;
    final totalPriceChangePercentage24H =
        ticketsBloc.state.balance.totalPriceChangePercentage24H;

    return Row(
      children: [
        Text(
          '\$ ${yround(totalCurrentPrice)}',
          style: const TextStyle(fontSize: 46),
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              '${yround(totalPriceChangePercentage24H)} % ',
              style: TextStyle(
                  fontSize: 16,
                  color: colorByPrice(totalPriceChangePercentage24H)),
            ),
            Text('${yround(totalPriceChange24H)}',
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ],
        )
      ],
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
