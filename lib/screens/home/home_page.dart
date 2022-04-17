import 'package:crypto_app/screens/trading/trading_page.dart';
import 'package:crypto_app/themes/theme_constants.dart';
import 'package:crypto_app/components/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsGradient = [
      Color.fromARGB(0, 6, 13, 24),
      Color.fromARGB(220, 6, 13, 24),
      Color.fromARGB(255, 6, 13, 24)
    ];
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      appBar: AppBarHome(),
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
                StaticticsWalletHome(),
                SizedBox(
                  child: Container(),
                  height: 18,
                ),
                const CardWalletActions(),
                SizedBox(
                  height: 70,
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
                  height: 10,
                ),
                const Expanded(child: ListViewNews()),
              ],
            ),
          ),
        ),
        BottomGradient(
            size: size, colors: colorsGradient, height: 200, bottom: 180),
        Stack(children: [
          SlidingUpPanelMarket(dropdownvalue: 'Capitalization', items: [
            'Capitalization',
            'BlaBlaBl1',
            'BlaBlaBla2',
            'BlaBlaBla3',
            'BlaBlaBla4',
          ]),
          BottomGradient(
              size: size, colors: colorsGradient, height: 170, bottom: 0),
        ]),
      ]),
    );
  }
}

