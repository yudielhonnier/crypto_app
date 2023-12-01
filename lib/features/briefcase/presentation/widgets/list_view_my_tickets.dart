import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
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
              final ticket = widget.tickets[index];
              final ticketBloc = context.watch<TicketsBloc>();

              //DISMISABLE LIST
              return Dismissible(
                  direction: DismissDirection.endToStart,
                  onDismissed: (directions) =>
                      _onDismissed(directions, index, ticketBloc),
                  confirmDismiss: (direction) async {
                    return await _showAlertDialog(context);
                  },
                  background: Container(
                      color: const Color.fromARGB(255, 51, 4, 1),
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Spacer(),
                            Icon(
                              Icons.delete_forever_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Delete",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                  key: Key(ticket.id),
                  child: SizedBox(
                      child: IntrinsicHeight(
                          child: Row(
                    children: [
                      //LIST ITEM
                      Flexible(
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Image(
                            image: NetworkImage(ticket.image),
                            fit: BoxFit.contain,
                            width: 40,
                          ),
                          title: Text(ticket.name),
                          subtitle: Text(ticket.symbol),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ticket.priceChangePercentage24H < 0
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
                                  Text(yround(ticket.currentPrice).toString(),
                                      style: const TextStyle(fontSize: 20)),
                                  Row(
                                    children: [
                                      Text(
                                          yround(ticket.priceChange24H)
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: colorByPrice(
                                                ticket.priceChange24H),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          yround(ticket
                                                      .priceChangePercentage24H)
                                                  .toString() +
                                              '%',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: colorByPrice(ticket
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
                  ))));
            }),
        onRefresh: () => _onRefresh(context, widget.tickets.length));
  }

  Future<bool?> _showAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Delete ticket"),
            content: const Text("Are you sure you want to delete this item?"),
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
    BlocProvider.of<TicketsBloc>(context)
        .add(const TicketsEvent.getAllTickets());
  }

  void _onDismissed(
      DismissDirection direction, int index, TicketsBloc ticketBloc) {
    if (direction == DismissDirection.endToStart) {
      print("remove item");
      TicketModel toDelete = widget.tickets.elementAt(index);
      ticketBloc.add(TicketsEvent.deleteTicket(toDelete));
      ticketBloc.add(const TicketsEvent.getAllTickets());
      setState(() {
        widget.tickets.removeAt(index);
      });
    }
  }
}
