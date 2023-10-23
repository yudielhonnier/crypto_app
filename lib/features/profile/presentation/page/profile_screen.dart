import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/profile/presentation/page/desktop_body.dart';
import 'package:crypto_app/features/profile/presentation/page/mobile_body.dart';
import 'package:crypto_app/features/profile/presentation/page/tablet_body.dart';
import 'package:crypto_app/features/shared/widgets/responsive_layout.dart';
import 'package:crypto_app/injector.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<MarketsBloc>()..add(GetMarketsEvent(page: 0)),
          ),
        ],
        child: const SafeArea(
            child: ResponsiveLayout(
                mobileBody: MobileProfileBody(),
                tabletBody: TabletProfileBody(),
                desktopBody: DesktopProfileBody())));
  }
}
