import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/list_coins_without_chart.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/presentation/widgets/card_wallet_actions.dart';
import 'package:flutter/material.dart';

class TabletBriefcaseBody extends StatefulWidget {
  const TabletBriefcaseBody({super.key});

  @override
  State<TabletBriefcaseBody> createState() => _TabletBriefcaseBodyState();
}

class _TabletBriefcaseBodyState extends State<TabletBriefcaseBody> {
  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircularChart(data: data, isMovile: false),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // Expanded(child: Container()),
                          ListCoinsWithoutChart(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
      ]),
    );
  }
}
