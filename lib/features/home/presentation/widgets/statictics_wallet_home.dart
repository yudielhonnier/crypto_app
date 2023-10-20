import 'package:crypto_app/config/router/my_router.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:go_router/go_router.dart';

class StaticticsWalletHome extends StatelessWidget {
  const StaticticsWalletHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'PORTAFOLIO',
              style: TextStyle(
                  fontSize: 13,
                  color: darkTheme.colorScheme.secondary,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                context.push(MyRouter.briefcaseRoute);
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            const Text(
              '\$5,271.39',
              style: TextStyle(fontSize: 46),
            ),
            const Spacer(),
            Column(
              children: [
                const Text(
                  '+130.62%',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
                Text('+900.62',
                    style: TextStyle(
                        fontSize: 16,
                        color: darkTheme.colorScheme.secondary,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
