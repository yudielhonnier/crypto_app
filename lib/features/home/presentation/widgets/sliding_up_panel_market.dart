import 'package:crypto_app/core/helpers/color_by_price.dart';
import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/trading/presentation/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class SlidingUpPanelMarket extends StatefulWidget {
// Initial Selected Value
  String dropdownvalue;

  final List<String> items;

  SlidingUpPanelMarket({
    required this.items,
    required this.dropdownvalue,
    Key? key,
  }) : super(key: key);

  @override
  State<SlidingUpPanelMarket> createState() => _SlidingUpPanelMarketState();
}

class _SlidingUpPanelMarketState extends State<SlidingUpPanelMarket> {
  final double _initFabHeight = 120.0;

  double _fabHeight = 0;

  double _panelHeightOpen = 0;

  double _panelHeightClosed = 265.0;
  @override
  void initState() {
    super.initState();

    _fabHeight = _initFabHeight;
  }

  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[200],
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.black,
    ));

    return SlidingUpPanel(
      color: darkTheme.colorScheme.primary,
      maxHeight: _panelHeightOpen,
      minHeight: _panelHeightClosed,
      parallaxEnabled: true,
      parallaxOffset: .5,
      body: Container(),
      panelBuilder: _panel,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      onPanelSlide: (double pos) => setState(() {
        _fabHeight =
            pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
      }),
    );
  }

  Widget _panel(ScrollController sc) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 17, 23, 35),
                Color.fromARGB(255, 6, 13, 24)
              ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_up_sharp,
              )),
          const Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Text(
                'Market',
                style: TextStyle(fontSize: 26),
              )),
          Row(
            children: [
              Text('Sort by:',
                  style: TextStyle(
                      fontSize: 16,
                      color: darkTheme.colorScheme.secondary,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  // Initial Value
                  value: widget.dropdownvalue,
                  // Down Arrow Icon
                  icon: const Icon(
                    Icons.align_vertical_bottom,
                    size: 12,
                  ),
                  // Array list of items
                  items: widget.items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Expanded(child: Container()),
              GestureDetector(
                child: const SizedBox(
                  child: Icon(
                    Icons.dehaze,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: BlocBuilder<MarketsBloc, MarketsState>(
              builder: (BuildContext context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is Loaded) {
                  return _showListOfMarkets(context, state.markets);
                } else if (state is Error) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Error ${state.message}",
                          textAlign: TextAlign.center),
                      ElevatedButton(
                        onPressed: () {
                          // BlocProvider.of<RemotePostBloc>(context)
                          //     .add(GetRemotePosts());
                        },
                        child: const Text("Try again"),
                      )
                    ])),
                  );
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _showListOfMarkets(BuildContext context, List<MarketModel> markets) {
    return RefreshIndicator(
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
                      width: 30,
                    ),
                    market.priceChangePercentage24H < 0
                        ? const Icon(
                            Icons.arrow_circle_down,
                            color: Colors.red,
                            size: 30,
                          )
                        : const Icon(
                            Icons.arrow_circle_up,
                            color: Colors.green,
                            size: 30,
                          ),
                    Expanded(
                      child: Row(
                        children: [
                          Spacer(),
                          SizedBox(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 18,
                                ),
                                Text(yround(market.currentPrice).toString(),
                                    style: TextStyle(fontSize: 20)),
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
        onRefresh: () => _onRefresh(context));
  }

  Future<void> _onRefresh(BuildContext context) async {
    BlocProvider.of<MarketsBloc>(context).add(GetMarketsEvent());
  }
}
