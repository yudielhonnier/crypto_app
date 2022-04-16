import 'package:crypto_app/pages/trading_page.dart';
import 'package:crypto_app/themes/theme_constants.dart';
import 'package:crypto_app/widgets/widgets.dart';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'PORTAFOLIO',
                      style: TextStyle(
                          fontSize: 13,
                          color: darkTheme.colorScheme.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                      ),
                      onTap: () => Navigator.pushNamed(context, '/wallet'),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '\$5,271.39',
                      style: TextStyle(fontSize: 46),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          '+130.62%',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                        Text('+900.62',
                            style: TextStyle(
                                fontSize: 16,
                                color: darkTheme.colorScheme.secondary,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
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
        Positioned(
            bottom: 180,
            left: 0,
            child: IgnorePointer(
              ignoring: true,
              child: Opacity(
                opacity: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 6, 13, 24),
                            Color.fromARGB(220, 6, 13, 24),
                            Color.fromARGB(255, 6, 13, 24)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  height: 200,
                  width: size.width,
                ),
              ),
            )),

        PanelMarket(),

        Positioned(
          bottom: 0,
          left: 0,
          child: Opacity(
              opacity: 1,
              child: IgnorePointer(
                ignoring: true,
                child: Container(
                  // color:Color.fromARGB(255,6,13,24) ,
                  height: 60,
                  width: size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(50, 6, 13, 24),
                            Color.fromARGB(100, 6, 13, 24),
                            Color.fromARGB(220, 6, 13, 24),
                            Color.fromARGB(255, 6, 13, 24)
                          ]),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              )),
        ),
      ]),
    );
  }
}


