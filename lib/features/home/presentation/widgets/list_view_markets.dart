import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewMarkets extends StatelessWidget {
  const ListViewMarkets({
    super.key,
    required this.context,
    required this.markets,
  });

  final BuildContext context;
  final List<MarketModel> markets;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        color: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: markets.length,
            itemBuilder: (BuildContext context, int index) {
              final market = markets[index];
              return SizedBox(
                  child: IntrinsicHeight(
                child: Row(
                  children: [
                    Flexible(
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
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        //todo: add action
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 50,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    market.priceChangePercentage24H < 0
                        ? const Icon(
                            Icons.arrow_circle_down,
                            color: Colors.red,
                            size: 50,
                          )
                        : const Icon(
                            Icons.arrow_circle_up,
                            color: Colors.green,
                            size: 50,
                          ),
                    Expanded(
                      child: Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(yround(market.currentPrice).toString(),
                                    style: const TextStyle(fontSize: 20)),
                                Row(
                                  children: [
                                    Text(
                                        yround(market.priceChange24H)
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: colorByPrice(
                                              market.priceChange24H),
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
                                            color: colorByPrice(market
                                                .priceChangePercentage24H))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));

              // return Card(
              //   child: ListTile(
              //     contentPadding: const EdgeInsets.all(8),
              //     leading: const Icon(Icons.post_add, color: Colors.blue),
              //     title: Text(markets[index].title),
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => MyCommentsPage(
              //                   markets[index].postId, markets[index].title)));
              //     },
              //   ),
              // );
            }),
        onRefresh: () => _onRefresh(context, markets.length));
  }

  Future<void> _onRefresh(BuildContext context, int page) async {
    BlocProvider.of<MarketsBloc>(context).add(GetMarketsEvent(page: page));
  }
}
