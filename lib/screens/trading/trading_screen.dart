// import 'package:crypto_app/models/sales_data.dart';
import 'package:crypto_app/models/step_area_data.dart';
import 'package:crypto_app/themes/theme_constants.dart';
import 'package:crypto_app/components/widgets.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class TradingScreen extends StatefulWidget {
  @override
  TradingScreenState createState() => TradingScreenState();
}

class TradingScreenState extends State<TradingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Initial Selected Value
    String dropdownvalue = 'ETH/USDT';

    // List of items in our dropdown menu
    var coinsPair = [
      'ETH/USDT',
      'BlaBlaBla1',
      'BlaBlaBla2',
      'BlaBlaBla3',
      'BlaBlaBla4',
    ];

    var _ktabs = <Widget>[
      const SizedBox(
        child: Tab(
          text: 'Order Book',
        ),
      ),
      const SizedBox(
        child: Tab(
          text: 'History',
        ),
      ),
      const SizedBox(
          child: Tab(
        text: 'Notes',
      )),
      const SizedBox(
          child: Tab(
        text: 'Info',
      )),
    ];
    // var

    List<double> lineChartDataList = [
      35.5,
      12,
      45.5,
      23.23,
      15.676,
      19.56,
      17.3444,
      80.5,
      75.23,
      82.676,
      82.56,
      102.3,
      90.444
    ];

    List<StepAreaData> chartData = <StepAreaData>[
      StepAreaData(1, 23, -29),
      StepAreaData(2, 13, -7),
      StepAreaData(3, 4, -90),
      StepAreaData(4, 90, -50),
      StepAreaData(5, 40, -5),
    ];

    String walletAmount = '\$5,271.39';
    String higAmount = '130.62%';
    String lowAmount = '+900.62';

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: darkTheme.colorScheme.primary,
        appBar: AppBarTrading(
          dropdownvalue: dropdownvalue,
          items: coinsPair,
          context: context,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 410,
              child: ColoredBox(
                color: darkTheme.colorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      LinearChartStatictics(
                          walletAmount: walletAmount,
                          higAmount: higAmount,
                          lowAmount: lowAmount),
                      SizedBox(
                        child: Container(),
                        height: 30,
                      ),
                      Container(
                        height: 1,
                        color: darkTheme.colorScheme.secondary,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          child: Stack(children: [
                        ColoredBox(
                          color: darkTheme.colorScheme.secondary,
                          child: SizedBox(
                            width: 51,
                            height: 30,
                            child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: const [
                                    Icon(Icons.stacked_line_chart_sharp),
                                    Text('Line'),
                                  ],
                                )),
                          ),
                        ),
                        LineChartWidget(
                          data: lineChartDataList,
                          width: double.infinity,
                          height: 220,
                          color: Colors.white,
                        ),
                      ])),
                      const SizedBox(
                        child: CardsTimeChart(),
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 48,
              child: AppBar(
                  bottom: PreferredSize(
                      preferredSize: Size.fromWidth(size.width - 40),
                      child: SizedBox(
                        width: size.width - 40,
                        child: TabBar(
                          labelStyle: const TextStyle(fontSize: 16),
                          labelPadding: const EdgeInsets.only(right: 25),
                          isScrollable: true,
                          indicator: const UnderlineTabIndicator(
                            borderSide:
                                BorderSide(width: 1.0, color: Colors.white),
                            insets: EdgeInsets.only(right: 20),
                          ),
                          tabs: _ktabs,
                        ),
                      ))),
            ),
            SizedBox(
                height: 260,
                child: Column(
                  children: [
                    ColoredBox(
                      color: darkTheme.colorScheme.secondary,
                      child: SizedBox(
                        height: 1,
                        child: Container(),
                      ),
                    ),
                    Flexible(
                      child: TabBarView(
                        children: <Widget>[
                          OrderBook(chartData: chartData, size: size),
                          const History(),
                          const Notes(),
                          const Info(),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
