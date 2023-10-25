import 'package:flutter/material.dart';

class BidOrderBook extends StatelessWidget {
  const BidOrderBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Bid'),
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: const Color.fromARGB(0, 6, 13, 24),
                  child: ListView.builder(
                    itemExtent: 36,
                    itemBuilder: (_, i) => ListTile(
                      title: Text("${1100 + i * (1001 - i)}"),
                      trailing: Text("${45500 + i * (34001 - i)}"),
                      contentPadding: const EdgeInsets.only(left: 0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(
          width: 16,
        ),
        Flexible(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text('Ask'),
                height: 40,
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(0, 6, 13, 24),
                  child: ListView.builder(
                    itemExtent: 36,
                    itemBuilder: (_, i) => ListTile(
                      title: Text("${1545 + i * (154223 - i)}"),
                      trailing: Text("${4723432 + i * (3344501 - i)}"),
                      contentPadding: const EdgeInsets.only(left: 0),
                    ),
                  ),
                  // height: 150,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
