import 'package:crypto_app/screens/home/home_page.dart';
import 'package:crypto_app/screens/trading/trading_page.dart';
import 'package:crypto_app/screens/wallet/wallet_page.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
        '/chart':(_) => TradingPage(),
        '/home': (_) => HomePage(),
        '/wallet': (_) => WalletPage(),

      };