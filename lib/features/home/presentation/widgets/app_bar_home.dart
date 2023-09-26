import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSize {
  const AppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: child,
    );
  }

  @override
  Widget get child => Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 17, 24, 36),
                      Color.fromARGB(255, 6, 13, 24)
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 36,
          ),
          AppBar(
            leadingWidth: 63,
            leading: Container(
              padding: const EdgeInsets.only(left: 20),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/ship.jpg'),
              ),
            ),
            elevation: 0,
            title: const Text(
              'Yudiel Honnier',
              style: TextStyle(fontSize: 17),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.compare_arrows)),
              Stack(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none)),
                const Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 3,
                  ),
                  top: 15,
                  right: 16,
                ),
              ]),
            ],
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(92);
}
