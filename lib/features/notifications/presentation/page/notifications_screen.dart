import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/widgets/bottom_gradient.dart';
import 'package:crypto_app/injector.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NotificationsScreen> {
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
              name: 'Notifications',
              rightSpace: 100,
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

    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage('assets/ship.jpg'),
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'UserName',
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  Icon(Icons.credit_card),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'YOUR CARDS',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SETTINGS',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'NOTIFICATIONS',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                  )),
              //  padding: const EdgeInsets.symmetric(vertical: 10.0),
              // color: Colors.grey,
              child: const Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LOGOUT',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      BottomGradient(size: size, colors: colorsGradient, height: 170, bottom: 0)
    ]);
  }
}
