import 'package:crypto_app/features/trading/presentation/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      panelBuilder: (sc) => _panel(sc),
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
          Container(
            child: Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 0),
                shrinkWrap: true,
                controller: sc,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Flexible(
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: CircleAvatar(
                              backgroundColor:
                                  darkTheme.colorScheme.secondaryContainer,
                              child: const Icon(
                                Icons.monetization_on_outlined,
                              ),
                              radius: 24.0,
                            ),
                            title: const Text('Bitcoin '),
                            subtitle: const Text('BTC'),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const LineChartWidget(
                          data: [0.2, 65.5, 123.23, 45.676, 9.56, 2.3444],
                        ),
                        const Expanded(
                          child: Row(
                            children: [
                              Spacer(),
                              SizedBox(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text('32811.00',
                                        style: TextStyle(fontSize: 20)),
                                    Row(
                                      children: [
                                        Text('-761.0',
                                            style: TextStyle(fontSize: 12)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('-2.27%',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.red)),
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
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
