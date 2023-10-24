import 'package:crypto_app/config/router/my_router.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/profile/presentation/widgets/image_profile.dart';
import 'package:crypto_app/features/profile/presentation/widgets/profile_option.dart';
import 'package:crypto_app/features/shared/widgets/custom_button.dart';
import 'package:crypto_app/features/shared/widgets/app_bar_shared.dart';
import 'package:flutter/material.dart';

class DesktopProfileBody extends StatefulWidget {
  const DesktopProfileBody({super.key});

  @override
  State<DesktopProfileBody> createState() => _DesktopProfileBodyState();
}

class _DesktopProfileBodyState extends State<DesktopProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      appBar: AppBarShared(
        context: context,
        name: 'Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            //Profile options
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileOption(
                      height: context.height * 0.05,
                      width: context.width / 6,
                      name: 'YOUR CARDS',
                      iconOption: Icons.credit_card,
                      routeName: MyRouter.cardsRoute,
                    ),
                    ProfileOption(
                      height: context.height * 0.05,
                      width: context.width / 6,
                      name: 'SETTINGS',
                      iconOption: Icons.settings,
                      routeName: MyRouter.settingsRoute,
                    ),
                    ProfileOption(
                      height: context.height * 0.05,
                      width: context.width / 6,
                      name: 'NOTIFICATIONS',
                      iconOption: Icons.notifications,
                      routeName: MyRouter.notificationsRoute,
                    ),
                    CustomButton(
                      height: context.height * 0.05,
                      width: context.width / 6,
                      text: 'LOGOUT',
                    ),
                  ],
                ),
              ),
            ),
            VerticalDivider(
              color: darkTheme.colorScheme.secondary,
            ),
            //Image profile
            const Expanded(
              flex: 2,
              child: ImageProfile(image: AssetImage('assets/profile.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
