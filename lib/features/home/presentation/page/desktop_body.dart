import 'package:crypto_app/features/home/presentation/widgets/app_bar_home.dart';
import 'package:crypto_app/features/shared/widgets/bottom_gradient.dart';
import 'package:crypto_app/features/shared/widgets/card_wallet_actions.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_news.dart';
import 'package:crypto_app/features/home/presentation/widgets/sliding_up_panel_market.dart';
import 'package:crypto_app/features/home/presentation/widgets/statictics_wallet_home.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';

class DesktopHomeBody extends StatelessWidget {
  const DesktopHomeBody({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsGradient = [
      const Color.fromARGB(0, 6, 13, 24),
      const Color.fromARGB(220, 6, 13, 24),
      const Color.fromARGB(255, 6, 13, 24)
    ];
    final sortedByItems = [
      'Capitalization',
      'BlaBlaBl1',
      'BlaBlaBla2',
      'BlaBlaBla3',
      'BlaBlaBla4',
    ];

    return Scaffold(
        backgroundColor: darkTheme.colorScheme.primary,
        appBar: AppBarHome(
          context: context,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Row(children: [
            Stack(children: [
              ColoredBox(
                // color: darkTheme.colorScheme.primary,
                color: Colors.green[100]!,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Container(),
                        height: 30,
                      ),
                      const StaticticsWalletHome(),
                      SizedBox(
                        child: Container(),
                        height: 18,
                      ),
                      const CardWalletActions(),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              BottomGradient(
                  size: size, colors: colorsGradient, height: 200, bottom: 180),
              Stack(children: [
                BottomGradient(
                    size: size, colors: colorsGradient, height: 170, bottom: 0),
              ]),
            ]),

            // SizedBox(
            //   height: 60,
            //   child: Padding(
            //     padding: const EdgeInsets.only(top: 25),
            //     child: Align(
            //         alignment: AlignmentDirectional.bottomStart,
            //         child: Text(
            //           'NEWS',
            //           style: TextStyle(
            //               fontSize: 14,
            //               color: darkTheme.colorScheme.secondary,
            //               fontWeight: FontWeight.bold),
            //         )),
            //   ),
            // ),
            const Expanded(child: ListViewNews()),
            // SlidingUpPanelMarket(
            //     dropdownvalue: sortedByItems[0], items: sortedByItems),
          ]),
        ));
  }
}
