import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class CardsTimeChart extends StatelessWidget {
  const CardsTimeChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: AlignmentDirectional.bottomStart,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('D')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('W')),
            ),
            Card(
              color: darkTheme.colorScheme.secondary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('M')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 20,
                  child: const Text('6M')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('Y')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('Y')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('All')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text('')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Icon(Icons.aspect_ratio)),
            ),
          ],
        ));
  }
}
