import 'package:crypto_app/features/briefcase/presentation/pages/briefcase_screen.dart';
import 'package:crypto_app/features/cards/presentation/page/cards_screen.dart';
import 'package:crypto_app/features/help/presentation/page/help_screen.dart';
import 'package:crypto_app/features/notifications/presentation/page/notifications_screen.dart';
import 'package:crypto_app/features/profile/presentation/page/profile_screen.dart';
import 'package:crypto_app/features/settings/presentation/page/settings_screen.dart';
import 'package:crypto_app/features/trading/presentation/pages/trading_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/resources/toast_service.dart';
import '../../features/home/data/models/article_model.dart';
import '../../features/home/presentation/page/article_screen.dart';
import '../../features/home/presentation/page/home_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyRouter {
  static const homeRoute = '/home';
  static const settingsRoute = '/settings';
  static const profileRoute = '/profile';
  static const briefcaseRoute = '/briefcase';
  static const cardsRoute = '/cards';
  static const helpRoute = '/help';
  static const notificationsRoute = '/notifications';
  static const tradingRoute = '/trading';
  static const logoutRoute = '/initial';
  static const articleRoute = '/article';

  late final router = GoRouter(
    initialLocation: homeRoute,
    navigatorKey: navigatorKey,
    routes: <GoRoute>[
      GoRoute(
        path: homeRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const HomeScreen()),
        ),
      ),
      GoRoute(
        path: profileRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const ProfileScreen()),
        ),
      ),
      GoRoute(
        path: settingsRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const SettingsScreen()),
        ),
      ),
      GoRoute(
        path: briefcaseRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const BriefcaseScreen()),
        ),
      ),
      GoRoute(
        path: cardsRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const CardsScreen()),
        ),
      ),
      GoRoute(
        path: notificationsRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const NotificationsScreen()),
        ),
      ),
      GoRoute(
        path: helpRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const HelpScreen()),
        ),
      ),
      GoRoute(
        path: tradingRoute,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: _build(const TradingScreen()),
        ),
      ),
      GoRoute(
        path: articleRoute,
        pageBuilder: (context, state) {
          ArticleModel article = state.extra as ArticleModel;
          return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: _build(ArticleScreen(
              article: article,
            )),
          );
        },
      ),
      // GoRoute(
      //   path: '/provider',
      //   // builder: (BuildContext context, GoRouterState state) =>
      //   //     _build(const CounterProviderPage(sta)),
      //   pageBuilder: (context, state) {
      //     print(state.queryParams['q']);
      //     return buildPageWithDefaultTransition(
      //       context: context,
      //       state: state,
      //       child: _build(CounterProviderPage(
      //         q: state.queryParams['q'] ?? '5',
      //       )),
      //     );
      //   },
      // ),
    ],

    // //TODO: Error Handler
    // errorPageBuilder: (context, state) =>
    //     // MaterialPage<void>(
    //     //   key: state.pageKey,
    //     //   child: Page404(error: state.error),
    //     // ),
    //     buildPageWithDefaultTransition(
    //   context: context,
    //   state: state,
    //   child: _build(Page404(error: state.error)),
    // ),

    // TODO Add Redirect
  );
  Widget _build(Widget child) {
    return Scaffold(body: child);
  }
}

CustomTransitionPage<void> buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  ToastService.initialize(context);

  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
    transitionDuration: const Duration(milliseconds: 300),
  );
}
