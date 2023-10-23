import 'package:crypto_app/core/constants/trading_screen_data.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/trading/presentation/widgets/app_bar_trading.dart';
import 'package:crypto_app/features/trading/presentation/widgets/cards_time_chart.dart';
import 'package:crypto_app/features/trading/presentation/widgets/history.dart';
import 'package:crypto_app/features/trading/presentation/widgets/info.dart';
import 'package:crypto_app/features/trading/presentation/widgets/line_chart.dart';
import 'package:crypto_app/features/trading/presentation/widgets/linear_chart_statictics.dart';
import 'package:crypto_app/features/trading/presentation/widgets/notes.dart';
import 'package:crypto_app/features/trading/presentation/widgets/order_book.dart';
import 'package:flutter/material.dart';

import 'package:crypto_app/config/themes/theme_constants.dart';

class DesktopTradingBody extends StatefulWidget {
  const DesktopTradingBody({super.key});

  @override
  State<DesktopTradingBody> createState() => _DesktopTradingBodyState();
}

class _DesktopTradingBodyState extends State<DesktopTradingBody> {
  @override
  Widget build(BuildContext context) {
    late double heightContext = context.height;
    late double widthContext = context.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: darkTheme.colorScheme.primary,
        appBar: AppBarTrading(
          dropdownvalue: dropdownvalue,
          items: coinsPair,
          context: context,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              //chart
              Expanded(
                flex: 2,
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
                          height: 26,
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
                            child: const SizedBox(
                              width: 55,
                              height: 30,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(Icons.stacked_line_chart_sharp),
                                      Text('Line'),
                                    ],
                                  )),
                            ),
                          ),
                          LineChartWidget(
                            data: lineChartDataList,
                            width: double.infinity,
                            height: heightContext * 0.5,
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
              const VerticalDivider(
                width: 10,
              ),
              //tab bar controller
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: AppBar(
                            automaticallyImplyLeading: false,
                            bottom: PreferredSize(
                                preferredSize:
                                    Size.fromWidth(widthContext - 40),
                                child: SizedBox(
                                  height: heightContext * 0.06,
                                  width: widthContext - 40,
                                  child: TabBar(
                                    labelStyle: const TextStyle(fontSize: 16),
                                    labelPadding:
                                        const EdgeInsets.only(right: 25),
                                    isScrollable: true,
                                    indicator: const UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          width: 1.0, color: Colors.white),
                                      insets: EdgeInsets.only(right: 20),
                                    ),
                                    tabs: ktabs,
                                  ),
                                ))),
                      ),
                      Expanded(
                        flex: 10,
                        child: SizedBox(
                            height: heightContext * 0.6,
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
                                      OrderBook(
                                          chartData: chartData,
                                          size: Size(
                                              widthContext, heightContext)),
                                      const History(),
                                      const Notes(),
                                      const Info(),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
