import 'package:flutter/material.dart';

class BottomGradient extends StatelessWidget {
  BottomGradient({
    Key? key,
    required this.size,
    required this.colors,
    required this.height,
    required this.bottom,
  }) : super(key: key);

  final Size size;
  final double height;
  final double bottom;

  // the gradient colors
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: 0,
      child: Opacity(
          opacity: 1,
          child: IgnorePointer(
            ignoring: true,
            child: Container(
              height: height,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: colors),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          )),
    );
  }
}
