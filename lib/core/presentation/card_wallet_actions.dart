import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class CardWalletActions extends StatelessWidget {
  const CardWalletActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: darkTheme.colorScheme.secondary,
      child: Container(
        margin: EdgeInsets.only(top: 14, bottom: 16),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.auto_graph_sharp),
                Expanded(child: Container()),
                Text('ANALYTICS', style: TextStyle(fontSize: 12)),
              ],
            ),
            VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_forward_outlined),
                Expanded(child: Container()),
                Text('WITHDRAW', style: TextStyle(fontSize: 12)),
              ],
            ),
            VerticalDivider(
              color: Colors.black87,
              width: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                Expanded(child: Container()),
                Text('DEPOSIT', style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
