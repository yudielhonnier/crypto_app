import 'package:crypto_app/features/profile/presentation/bloc/user_bloc.dart';
import 'package:crypto_app/features/profile/presentation/page/desktop_body_profile.dart';
import 'package:crypto_app/features/profile/presentation/page/mobile_body_profile.dart';
import 'package:crypto_app/features/profile/presentation/page/tablet_body_profile.dart';
import 'package:crypto_app/features/shared/presentation/widgets/responsive_layout.dart';
import 'package:crypto_app/app/injector.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<UserBloc>(),
          ),
        ],
        child: const SafeArea(
            child: ResponsiveLayout(
                mobileBody: MobileProfileBody(),
                tabletBody: TabletProfileBody(),
                desktopBody: DesktopProfileBody())));
  }
}
