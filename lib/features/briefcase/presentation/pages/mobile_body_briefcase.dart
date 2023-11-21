import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/list_coins_without_chart.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/presentation/widgets/bottom_gradient.dart';
import 'package:crypto_app/features/shared/presentation/widgets/card_wallet_actions.dart';
import 'package:flutter/material.dart';

class MobileBriefcaseBody extends StatefulWidget {
  const MobileBriefcaseBody({super.key});

  @override
  State<MobileBriefcaseBody> createState() => _MobileBriefcaseBodyState();
}

class _MobileBriefcaseBodyState extends State<MobileBriefcaseBody> {
  @override
  Widget build(BuildContext context) {
    late double contextHeight = context.height;
    late double contextWidth = context.width;
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
              CircularChart(
                data: data,
                isMovile: true,
              ),
              const SizedBox(
                height: 18,
              ),
              const CardWalletActions(),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Column(
                  children: [
                    ListCoinsWithoutChart(),
                  ],
                ),
              ),
            ],
          ),
        ),
        BottomGradient(
            size: Size(contextWidth, contextHeight),
            colors: colorsGradient,
            height: 170,
            bottom: 0)
      ]),
    );
  }
}
