import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    super.key,
    required this.image,
  });
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: image,
              // width: 200,
              // height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'UserName',
          style: TextStyle(fontSize: 20),
        ),
      ]),
    );
  }
}
