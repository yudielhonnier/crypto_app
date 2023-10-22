import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class CardWalletActions extends StatelessWidget {
  const CardWalletActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: darkTheme.colorScheme.secondary,
      child: Container(
        height: context.height * 0.07,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 600),
        margin: const EdgeInsets.only(top: 14, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.auto_graph_sharp,
                  ),
                  Spacer(),
                  Text('ANALYTICS', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_forward_outlined,
                  ),
                  Expanded(child: Container()),
                  const Text('WITHDRAW', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_back,
                  ),
                  Expanded(child: Container()),
                  const Text('DEPOSIT', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
