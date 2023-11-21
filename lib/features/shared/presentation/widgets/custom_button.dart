import 'package:crypto_app/config/router/my_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
  });
  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.push(MyRouter.homeRoute),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(14),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          maximumSize: Size(width, height)),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            const Icon(Icons.logout),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
