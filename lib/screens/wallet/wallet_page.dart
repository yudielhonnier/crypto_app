import 'package:crypto_app/models/chart_circular_data.dart';
import 'package:crypto_app/models/sales_data.dart';
import 'package:crypto_app/models/step_area_data.dart';
import 'package:crypto_app/themes/theme_constants.dart';
import 'package:crypto_app/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WalletPage extends StatefulWidget {
  @override
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<ChartCircularData> data = [
      ChartCircularData('CHN', 12, Colors.red),
      ChartCircularData('GER', 15, Colors.green),
      ChartCircularData('RUS', 30, Colors.yellow),
      ChartCircularData('BRZ', 6.4, Colors.blue),
      ChartCircularData('IND', 14, Colors.white)
    ];

    final colorsGradient = [
      Color.fromARGB(0, 6, 13, 24),
      Color.fromARGB(220, 6, 13, 24),
      Color.fromARGB(255, 6, 13, 24)
    ];


    List<StepAreaData> chartData = <StepAreaData>[
      StepAreaData(1, 23, -29),
      StepAreaData(2, 13, -7),
      StepAreaData(3, 4, -90),
      StepAreaData(4, 90, -50),
      StepAreaData(5, 40, -5),
    ];

    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      // backgroundColor: Colors.white,
      appBar: AppBarWallet(
        context: context,
      ),
      body: Stack(children: [
        Container(
          color: darkTheme.colorScheme.primary,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Stack(children: [
                CircularChart(data: data),
                StaticticsCircularChart(size: size),
              ]),
              SizedBox(
                height: 18,
              ),
              CardWalletActions(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(child: Container()),
              ListCoinsWithoutChart(),
            ],
          ),
        ),
        BottomGradient(
            size: size, colors: colorsGradient, height: 170, bottom: 0)
      ]),
    );
  }
}
