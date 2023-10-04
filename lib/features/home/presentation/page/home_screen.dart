import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/widgets/bottom_gradient.dart';
import 'package:crypto_app/features/shared/widgets/card_wallet_actions.dart';
import 'package:crypto_app/features/home/presentation/widgets/app_bar_home.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_news.dart';
import 'package:crypto_app/features/home/presentation/widgets/sliding_up_panel_market.dart';
import 'package:crypto_app/features/home/presentation/widgets/statictics_wallet_home.dart';
import 'package:crypto_app/features/shared/models/coin_response.dart';
import 'package:crypto_app/features/shared/models/coin_simple_response.dart';
import 'package:crypto_app/features/trading/presentation/pages/trading_screen.dart';
import 'package:crypto_app/injector.dart';
import 'package:crypto_app/services/trafic_service.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<MarketsBloc>()..add(GetMarketsEvent()),
          ),
        ],
        child: Scaffold(
          backgroundColor: darkTheme.colorScheme.primary,
          appBar: const AppBarHome(),
          body: _buildBody(),
        ));
  }

  Widget _buildBody() {
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

    return Stack(children: [
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
      BottomGradient(
          size: size, colors: colorsGradient, height: 200, bottom: 180),
      Stack(children: [
        SlidingUpPanelMarket(
            dropdownvalue: sortedByItems[0], items: sortedByItems),
        BottomGradient(
            size: size, colors: colorsGradient, height: 170, bottom: 0),
      ]),
    ]);
  }
}
