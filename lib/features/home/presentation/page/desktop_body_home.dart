import 'package:crypto_app/features/home/presentation/widgets/app_bar_home.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_news.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/features/home/presentation/widgets/panel_market_desktop.dart';
import 'package:crypto_app/features/home/presentation/widgets/statictics_wallet_home.dart';
import 'package:crypto_app/features/shared/presentation/widgets/card_wallet_actions.dart';

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
      body: SafeArea(
        child: ColoredBox(
          color: darkTheme.colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              const StaticticsWalletHome(),
              SizedBox(
                child: Container(),
                height: 18,
              ),
              const CardWalletActions(),
              const SizedBox(
                height: 14,
              ),
              Flexible(
                flex: 4,
                fit: FlexFit.tight,
                child: Row(children: [
                  //news
                  Expanded(
                      child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Center(
                          child: Text(
                            'NEWS',
                            style: TextStyle(
                                fontSize: 14,
                                color: darkTheme.colorScheme.secondary,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: ScrollConfiguration(
                              behavior: ScrollConfiguration.of(context)
                                  .copyWith(scrollbars: false),
                              child: const ListViewNews(),
                            )),
                      ),
                    ],
                  )),
                  VerticalDivider(
                    color: darkTheme.colorScheme.secondary,
                    width: 40,
                  ),
                  Expanded(
                    child: PanelMarketDesktop(
                        dropdownValue: sortedByItems[0], items: sortedByItems),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
