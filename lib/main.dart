import 'dart:io';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/helpers/camera_delegate.dart';
import 'package:crypto_app/core/resources/ticket_db_helper.dart';
import 'package:crypto_app/features/home/presentation/bloc/article_bloc.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:crypto_app/features/shared/presentation/cubit/app_shadow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'config/router/my_router.dart';
import 'injector/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await TicketDatabaseHelper().initializeDatabase();
  setUpCameraDelegate();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      minimumSize: Size(400, 500),
      size: Size(1200, 800),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<MyRouter>(
            lazy: false,
            create: (BuildContext createContext) => MyRouter(),
          )
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  getIt<TicketsBloc>()..add(const TicketsEvent.getAllTickets()),
            ),
            BlocProvider(
              create: (context) => getIt<AppShadowCubit>(),
            ),
            BlocProvider(
                create: (context) => getIt<ArticleBloc>()
                  ..add(const ArticleEvent.getAllArticles()))
          ],
          child: Builder(builder: (BuildContext context) {
            final _router =
                Provider.of<MyRouter>(context, listen: false).router;

            return MaterialApp.router(
              builder: FToastBuilder(),
              routerConfig: _router,
              title: 'Material App',
              theme: ligthTheme,
              darkTheme: darkTheme,
              themeMode: ThemeMode.dark,
              debugShowCheckedModeBanner: false,
            );
          }),
        ));
  }
}
