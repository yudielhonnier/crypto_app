import 'package:crypto_app/features/shared/presentation/cubit/app_shadow_cubit.dart';
import 'package:crypto_app/features/shared/presentation/widgets/card_wallet_actions.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_news.dart';
import 'package:crypto_app/features/home/presentation/widgets/sliding_up_panel_market.dart';
import 'package:crypto_app/features/home/presentation/widgets/statictics_wallet_home.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/presentation/widgets/bottom_gradient.dart';
import '../widgets/app_bar_home.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({
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

    return Stack(
      children: [
        Scaffold(
            backgroundColor: darkTheme.colorScheme.primary,
            appBar: AppBarHome(
              context: context,
            ),
            body: Stack(children: [
              ColoredBox(
                color: darkTheme.colorScheme.primary,
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
                      SizedBox(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Align(
                              alignment: AlignmentDirectional.bottomStart,
                              child: Text(
                                'NEWS',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: darkTheme.colorScheme.secondary,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Expanded(child: ListViewNews()),
                    ],
                  ),
                ),
              ),
            ])),
        //SLIDINGUP PANEL BLOC
        Builder(builder: (context) {
          final shadowCubit = context.watch<AppShadowCubit>();
          if (shadowCubit.state == const AppShadowState.hide()) {
            return SlidingUpPanelMarket(
                dropdownvalue: sortedByItems[0], items: sortedByItems);
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Container(
              //   height: 30,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //         colors: [
              //           const Color.fromARGB(255, 17, 23, 35)
              //               .withOpacity(0.2),
              //           const Color.fromARGB(255, 17, 13, 30)
              //               .withOpacity(0.4),
              //           const Color.fromARGB(255, 6, 13, 24).withOpacity(0.5),
              //         ]),
              //     borderRadius: const BorderRadius.only(
              //         topLeft: Radius.circular(20),
              //         topRight: Radius.circular(20)),
              //   ),
              // ),
              Stack(children: [
                SlidingUpPanelMarket(
                    dropdownvalue: sortedByItems[0], items: sortedByItems),
                BottomGradient(
                    size: size, colors: colorsGradient, height: 170, bottom: 0),
              ]),
            ],
          );
        }),
      ],
    );
  }
}
