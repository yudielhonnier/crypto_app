import 'package:crypto_app/features/shared/presentation/widgets/responsive_layout.dart';
import 'package:crypto_app/features/trading/presentation/pages/desktop_body_trading.dart';
import 'package:crypto_app/features/trading/presentation/pages/mobile_body_trading.dart';
import 'package:crypto_app/features/trading/presentation/pages/tablet_body_trading.dart';
import 'package:flutter/material.dart';

class TradingScreen extends StatefulWidget {
  const TradingScreen({super.key});

  @override
  TradingScreenState createState() => TradingScreenState();
}

class TradingScreenState extends State<TradingScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileBody: MobileTradingBody(),
        tabletBody: TabletTradingBody(),
        desktopBody: DesktopTradingBody());
  }
}
