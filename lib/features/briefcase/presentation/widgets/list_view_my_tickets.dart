import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewTickets extends StatefulWidget {
  const ListViewTickets({
    super.key,
    required this.context,
    required this.tickets,
  });

  final BuildContext context;
  final List<TicketModel> tickets;

  @override
  State<ListViewTickets> createState() => _ListViewTicketsState();
}

class _ListViewTicketsState extends State<ListViewTickets> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView.builder(
            padding: const EdgeInsets.all(4),
            itemCount: widget.tickets.length,
            itemBuilder: (BuildContext context, int index) {
              final market = widget.tickets[index];
              return SizedBox(
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
              ));
            }),
        onRefresh: () => _onRefresh(context, widget.tickets.length));
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
        widget.tickets.removeAt(index);
      });
    }
  }
}
