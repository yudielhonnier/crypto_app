import 'package:crypto_app/features/home/presentation/page/home_screen.dart';
import 'package:crypto_app/features/trading/presentation/pages/trading_screen.dart';
import 'package:crypto_app/features/briefcase/presentation/pages/wallet_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/chart': (_) => TradingScreen(),
  '/home': (_) => HomeScreen(),
  '/wallet': (_) => WalletScreen(),
};
