import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListViewMarkets extends StatefulWidget {
  ListViewMarkets({
    super.key,
    required this.context,
    required this.markets,
    this.callback,
  });

  final BuildContext context;
  final List<MarketModel> markets;
  Function(bool)? callback;

  @override
  State<ListViewMarkets> createState() => _ListViewMarketsState();
}

class _ListViewMarketsState extends State<ListViewMarkets> {
  // final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(_handleScrolling);
  }

  @override
  void dispose() {
    super.dispose();
    // _scrollController.removeListener(_handleScrolling);
    // _scrollController.dispose();
  }

  // void _handleScrolling() {
  //   if (_scrollController.position.isScrollingNotifier.value) {
  //     print('DEBBUG: true ');

  //     widget.callback!(true);
  //   } else {
  //     print('DEBBUG: false ');

  //     widget.callback!(false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool isNotToastReaded = true;
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          // setState(() {
          //   _isScrolling = true;
          // });
          print('DEBBUG: true notification - $notification ');

          // widget.callback!(true);
        } else if (notification is ScrollEndNotification) {
          // setState(() {
          //   _isScrolling = false;
          // });
          print('DEBBUG: false notification - $notification ');

          // widget.callback!(false);
        }
        return false;
      },
      child: RefreshIndicator(
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
                  Builder(
                    builder: (context) {
                      final ticketsBloc = context.watch<TicketsBloc>();

                      final mayShowAlreadyToast =
                          _mayShowAlreadyToast(ticketsBloc, isNotToastReaded);
                      final mayShowAddedToast =
                          _mayShowAddedToast(ticketsBloc, isNotToastReaded);

                      if (mayShowAlreadyToast) {
                        _showAlreadyToast(ticketsBloc);
                        isNotToastReaded = false;
                      }

                      if (mayShowAddedToast) {
                        _showAddedToast(ticketsBloc);
                        isNotToastReaded = false;
                      }

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
          onRefresh: () => _onRefresh(context, widget.markets.length)),
    );
  }

  bool _mayShowAlreadyToast(TicketsBloc ticketsBloc, bool isNotToastReaded) {
    return ticketsBloc.state.status == TicketStatus.alreadyExist &&
        isNotToastReaded;
  }

  bool _mayShowAddedToast(TicketsBloc ticketsBloc, bool isNotToastReaded) {
    return ticketsBloc.state.status == TicketStatus.loaded && isNotToastReaded;
  }

  Future<void> _onRefresh(BuildContext context, int page) async {
    BlocProvider.of<MarketsBloc>(context).add(GetMarketsEvent(page: page));
  }

  Future<bool?> _showAlreadyToast(TicketsBloc bloc) {
    return Fluttertoast.showToast(
      msg: 'The Ticket with id ${bloc.state.ticketModel.id} Already Exist!',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  Future<bool?> _showAddedToast(TicketsBloc bloc) {
    return Fluttertoast.showToast(
      msg: 'Ticket ${bloc.state.ticketModel.id} Added!',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
