import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewMarkets extends StatefulWidget {
  const ListViewMarkets({
    super.key,
    required this.context,
    required this.markets,
  });

  final BuildContext context;
  final List<MarketModel> markets;

  @override
  State<ListViewMarkets> createState() => _ListViewMarketsState();
}

class _ListViewMarketsState extends State<ListViewMarkets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.all(4),
          itemCount: widget.markets.length,
          itemBuilder: (BuildContext context, int index) {
            final market = widget.markets[index];
            return SizedBox(
                child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Image(
                      image: NetworkImage(market.image),
                      fit: BoxFit.contain,
                      width: 40,
                    ),
                    title: Text(market.name),
                    subtitle: Text(market.symbol),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      market.priceChangePercentage24H < 0
                          ? const Icon(
                              Icons.arrow_circle_down,
                              color: Colors.red,
                              size: 40,
                            )
                          : const Icon(
                              Icons.arrow_circle_up,
                              color: Colors.green,
                              size: 40,
                            ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(yround(market.currentPrice).toString(),
                                style: const TextStyle(fontSize: 20)),
                            Row(
                              children: [
                                Text(yround(market.priceChange24H).toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          colorByPrice(market.priceChange24H),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    yround(market.priceChangePercentage24H)
                                            .toString() +
                                        '%',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: colorByPrice(
                                            market.priceChangePercentage24H))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //ADD BUTTON
                Builder(
                  builder: (context) {
                    final ticketsBloc = context.watch<TicketsBloc>();

                    return GestureDetector(
                      onTap: () {
                        ticketsBloc.add(TicketsEvent.addTicket(
                            TicketModel.fromMarket(widget.markets[index])));
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ));
          },
        ),
        onRefresh: () => _onRefresh(context, widget.markets.length));
  }

  Future<void> _onRefresh(BuildContext context, int page) async {
    BlocProvider.of<MarketsBloc>(context).add(GetMarketsEvent(page: page));
  }
}
