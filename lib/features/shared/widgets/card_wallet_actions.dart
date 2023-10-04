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
        margin: const EdgeInsets.only(top: 14, bottom: 16),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.auto_graph_sharp),
                Expanded(child: Container()),
                const Text('ANALYTICS', style: TextStyle(fontSize: 12)),
              ],
            ),
            const VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_forward_outlined),
                Expanded(child: Container()),
                const Text('WITHDRAW', style: TextStyle(fontSize: 12)),
              ],
            ),
            const VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back),
                Expanded(child: Container()),
                const Text('DEPOSIT', style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
