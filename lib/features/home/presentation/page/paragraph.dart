import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class ParagraphWidget extends StatelessWidget {
  final String content;

  const ParagraphWidget({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paragraphs =
        content.split('. '); // Assuming paragraphs are separated by new lines

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: context.mediaQuery.size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: paragraphs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              paragraphs[index],
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          );
        },
      ),
    );
  }
}
