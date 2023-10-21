import 'package:crypto_app/features/shared/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/widgets/bottom_gradient.dart';
import 'package:crypto_app/features/shared/widgets/card_wallet_actions.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart_statictics.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/list_coins_without_chart.dart';
import 'package:flutter/material.dart';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/features/shared/models/chart_circular_data.dart';
import 'package:crypto_app/features/shared/models/step_area_data.dart';

class BriefcaseScreen extends StatefulWidget {
  const BriefcaseScreen({super.key});

  @override
  BriefcaseScreenState createState() => BriefcaseScreenState();
}

class BriefcaseScreenState extends State<BriefcaseScreen> {
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
      const Color.fromARGB(0, 6, 13, 24),
      const Color.fromARGB(220, 6, 13, 24),
      const Color.fromARGB(255, 6, 13, 24)
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
      appBar: AppBarShared(
        name: 'Briefcase',
        context: context,
      ),
      body: Stack(children: [
        Container(
          color: darkTheme.colorScheme.primary,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              //check  the size of circularChart
              Stack(children: [
                CircularChart(data: data),
                CircularChartStatictics(size: size),
              ]),
              const SizedBox(
                height: 18,
              ),
              const CardWalletActions(),
              const SizedBox(
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
              const ListCoinsWithoutChart(),
            ],
          ),
        ),
        BottomGradient(
            size: size, colors: colorsGradient, height: 170, bottom: 0)
      ]),
    );
  }
}
