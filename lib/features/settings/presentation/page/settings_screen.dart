import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/injector/injector.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<MarketsBloc>()..add(GetMarketsEvent(page: 0)),
          ),
        ],
        child: SafeArea(
          child: Scaffold(
            backgroundColor: darkTheme.colorScheme.primary,
            appBar: AppBarShared(
              context: context,
              name: 'Settings',
            ),
            body: _buildBody(),
          ),
        ));
  }

  Widget _buildBody() {
    final size = MediaQuery.of(context).size;
    final colorsGradient = [
      const Color.fromARGB(0, 6, 13, 24),
      const Color.fromARGB(220, 6, 13, 24),
      const Color.fromARGB(255, 6, 13, 24)
    ];

    return const Center(child: Text('Settings'));
  }
}
