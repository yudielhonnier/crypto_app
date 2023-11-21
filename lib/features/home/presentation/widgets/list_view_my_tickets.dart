import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewTickets extends StatefulWidget {
  const ListViewTickets({
    super.key,
    required this.context,
    required this.markets,
  });

  final BuildContext context;
  final List<MarketModel> markets;

  @override
  State<ListViewTickets> createState() => _ListViewMarketsState();
}

class _ListViewMarketsState extends State<ListViewTickets> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: widget.markets.length,
            itemBuilder: (BuildContext context, int index) {
              final market = widget.markets[index];
              return Dismissible(
                direction: DismissDirection.startToEnd,
                onDismissed: (directions) => _onDismissed(directions, index),
                confirmDismiss: (direction) async {
                  return await _showAlertDialog(context);
                },
                background: Container(
                    color: Colors.blue,
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "Move to favorites",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                key: Key(market.id),
                child: SizedBox(
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
                        width: 30,
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
                                          yround(market
                                                      .priceChangePercentage24H)
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
                )),
              );

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
        onRefresh: () => _onRefresh(context, widget.markets.length));
  }

  Future<bool?> _showAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Add ticket"),
            content: const Text("Are you sure you want to add this item?"),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text("Yes")),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text("No"),
              )
            ],
          );
        });
  }

  Future<void> _onRefresh(BuildContext context, int page) async {
    BlocProvider.of<MarketsBloc>(context).add(GetMarketsEvent(page: page));
  }

  void _onDismissed(DismissDirection direction, int index) {
    if (direction == DismissDirection.startToEnd) {
      print("add to local");
    } else {
      print("remove item");
      setState(() {
        widget.markets.removeAt(index);
      });
    }
  }
}
