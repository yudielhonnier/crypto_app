import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class CircularChartStatictics extends StatelessWidget {
  const CircularChartStatictics({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * 0.14,
        left: (size.width) * 0.24,
        child: SizedBox(
          // color: Colors.red,
          child: Column(
            children: [
              const Text(
                '\$5,271.39',
                style: TextStyle(fontSize: 36),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '+130.62%',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  const SizedBox(
                    width: 10,
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
        ));
  }
}
