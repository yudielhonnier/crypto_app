import 'package:crypto_app/features/cards/presentation/page/cards_screen.dart';
import 'package:crypto_app/features/help/presentation/page/help_screen.dart';
import 'package:crypto_app/features/home/presentation/page/home_screen.dart';
import 'package:crypto_app/features/notifications/presentation/page/notifications_screen.dart';
import 'package:crypto_app/features/profile/presentation/page/profile_screen.dart';
import 'package:crypto_app/features/settings/presentation/page/settings_screen.dart';
import 'package:crypto_app/features/trading/presentation/pages/trading_screen.dart';
import 'package:crypto_app/features/briefcase/presentation/pages/wallet_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/chart': (_) => const TradingScreen(),
  '/home': (_) => const HomeScreen(),
  '/wallet': (_) => const WalletScreen(),
  '/profile': (_) => const ProfileScreen(),
  '/cards': (_) => const CardsScreen(),
  '/settings': (_) => const SettingsScreen(),
  '/notifications': (_) => const NotificationsScreen(),
  '/help': (_) => const HelpScreen(),
};
