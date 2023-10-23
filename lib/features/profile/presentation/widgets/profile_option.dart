import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileOption extends StatefulWidget {
  const ProfileOption(
      {super.key,
      required this.width,
      required this.height,
      required this.iconOption,
      required this.name,
      required this.routeName});
  final double width;
  final double height;
  final String name;
  final IconData iconOption;
  final String routeName;

  @override
  State<ProfileOption> createState() => _ProfileOptionState();
}

class _ProfileOptionState extends State<ProfileOption> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isHover ? Colors.green : Colors.transparent,
            padding: const EdgeInsets.all(14),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            maximumSize: Size(
              widget.width,
              widget.height,
            )),
        onPressed: () => context.push(widget.routeName),
        onHover: (value) => setState(() {
              isHover = value;
            }),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              widget.iconOption,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ));
  }
}
