import 'package:crypto_app/config/router/my_router.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/presentation/widgets/bottom_gradient.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MobileProfileBody extends StatefulWidget {
  const MobileProfileBody({super.key});

  @override
  State<MobileProfileBody> createState() => _MobileProfileBodyState();
}

class _MobileProfileBodyState extends State<MobileProfileBody> {
  late double heightContext = context.height;
  late double widthContext = context.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      appBar: AppBarShared(
        context: context,
        name: 'Profile',
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 40.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                            image: AssetImage('assets/profile.jpg'),
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
              GestureDetector(
                child: const Padding(
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
                onTap: () => context.push(MyRouter.cardsRoute),
              ),
              GestureDetector(
                child: const Padding(
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
                onTap: () => context.push(MyRouter.settingsRoute),
              ),
              GestureDetector(
                child: const Padding(
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
                onTap: () => context.push(MyRouter.notificationsRoute),
              ),
              ElevatedButton(
                onPressed: () => context.push(MyRouter.homeRoute),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(14)),
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
        BottomGradient(
            size: Size(widthContext, heightContext),
            colors: colorsGradient,
            height: 170,
            bottom: 0)
      ]),
    );
  }
}
