import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/core/helpers/trading_screen_helper.dart';
import 'package:crypto_app/features/trading/presentation/widgets/app_bar_trading.dart';
import 'package:crypto_app/features/trading/presentation/widgets/interval_chart.dart';
import 'package:crypto_app/features/trading/presentation/widgets/line_chart.dart';
import 'package:crypto_app/features/trading/presentation/widgets/linear_chart_statictics.dart';
import 'package:flutter/material.dart';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/data/models/ticket_model.dart';
import '../bloc/grafic_bloc.dart';

class MobileTradingBody extends StatefulWidget {
  const MobileTradingBody({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  State<MobileTradingBody> createState() => _MobileTradingBodyState();
}

class _MobileTradingBodyState extends State<MobileTradingBody> {
  @override
  Widget build(BuildContext context) {
    final dropDownValues = getDropdownvalues(widget.ticket.symbol);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: darkTheme.colorScheme.primary,
        appBar: AppBarTrading(
          dropdownvalue: dropDownValues.first,
          items: dropDownValues,
          context: context,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ColoredBox(
                color: darkTheme.colorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Builder(builder: (context) {
                    final graficBloc = context.watch<GraficBloc>();

                    if (graficBloc.state.status ==
                        HistoricalMarketStatus.loaded) {
                      final data = getLineChartDataList(
                          graficBloc.state.historicMarketModel.prices);

                      final highAmount = data.highInDouble().toDouble();
                      final lowAmount = data.lowInDouble().toDouble();
                      //BUILD GRAFIC
                      return _buildGrafic(
                          highAmount, lowAmount, graficBloc, data);
                    }
                    if (graficBloc.state.status ==
                        HistoricalMarketStatus.loading) {
                      //BUILD LOADING GRAFIC
                      return _buildLoadingGrafic(graficBloc);
                    }
                    return Container();
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildGrafic(double highAmount, double lowAmount,
      GraficBloc graficBloc, List<double> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LinearChartStatictics(
            coin: graficBloc.state.coinModel,
            ticket: widget.ticket,
            higAmount: highAmount,
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
          Builder(builder: (context) {
            if (graficBloc.state.status == HistoricalMarketStatus.loading) {
              return const SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ));
            }

            if (graficBloc.state.status == HistoricalMarketStatus.loaded) {
              return LineChartWidget(
                data: data,
                width: double.infinity,
                height: 220,
                color: Colors.white,
              );
            }

            if (graficBloc.state.status == HistoricalMarketStatus.failure) {
              return const Text('Error');
            }

            return const Text('No data');
          }),
        ])),
        SizedBox(
          width: context.width * 0.74,
          height: 50,
          child: const IntervalChart(),
        ),
      ],
    );
  }

  Column _buildLoadingGrafic(GraficBloc historicalMarketBloc) {
    return Column(
      children: [
        const CircularProgressIndicator(
          color: Colors.white,
        ),
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
          const SizedBox(
              height: 220,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ))
        ])),
        SizedBox(
          width: context.width * 0.74,
          height: 50,
          child: const IntervalChart(),
        ),
      ],
    );
  }
}


  //TODO: ADD TO VERSION 1.1.0
    // Builder(builder: (context) {
            //   final historialMarket = context.watch<HistoricalMarketBloc>();
            //   if (historialMarket.state.status ==
            //       HistoricalMarketStatus.loading) {
            //     return const CircularProgressIndicator();
            //   }
            //   if (historialMarket.state.status ==
            //       HistoricalMarketStatus.loaded) {
            //     return Text(historialMarket.state.model.prices.toString());
            //   }
            //   return Container();
            // })
          
            // SizedBox(
            //   height: 48,
            //   child: AppBar(
            //       bottom: PreferredSize(
            //           preferredSize: Size.fromWidth(widthContext - 40),
            //           child: SizedBox(
            //             width: widthContext - 40,
            //             child: TabBar(
            //               labelStyle: const TextStyle(fontSize: 16),
            //               labelPadding: const EdgeInsets.only(right: 25),
            //               isScrollable: true,
            //               indicator: const UnderlineTabIndicator(
            //                 borderSide:
            //                     BorderSide(width: 1.0, color: Colors.white),
            //                 insets: EdgeInsets.only(right: 20),
            //               ),
            //               tabs: ktabs,
            //             ),
            //           ))),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Column(
            //     children: [
            //       ColoredBox(
            //         color: darkTheme.colorScheme.secondary,
            //         child: SizedBox(
            //           height: 1,
            //           child: Container(),
            //         ),
            //       ),
            //       Flexible(
            //         child: TabBarView(
            //           children: <Widget>[
            //             OrderBook(
            //                 chartData: chartData,
            //                 size: Size(widthContext, heightContext)),
            //             const History(),
            //             const Notes(),
            //             const Info(),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
