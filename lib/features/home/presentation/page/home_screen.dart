import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/home/presentation/page/desktop_body_home.dart';
import 'package:crypto_app/features/home/presentation/page/tablet_body_home.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:crypto_app/features/shared/presentation/widgets/responsive_layout.dart';
import 'package:crypto_app/app/injector.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mobile_body_home.dart';

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
          create: (_) => getIt<MarketsBloc>()..add(GetMarketsEvent(page: 0)),
        ),
      ],
      child: ResponsiveLayout(
          mobileBody: MobileHomeBody(context: context),
          tabletBody: TabletHomeBody(context: context),
          desktopBody: DesktopHomeBody(context: context)),
    );
  }
}
