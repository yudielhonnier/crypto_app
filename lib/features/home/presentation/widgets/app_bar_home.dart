import 'package:crypto_app/config/router/my_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarHome extends StatelessWidget implements PreferredSize {
  const AppBarHome({
    required this.context,
    Key? key,
  }) : super(key: key);

  final BuildContext context;

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
            leading: GestureDetector(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              onTap: () => context.push(MyRouter.profileRoute),
            ),
            elevation: 0,
            title: GestureDetector(
              child: const Text(
                'User',
                style: TextStyle(fontSize: 17),
              ),
              onTap: () => context.push(MyRouter.profileRoute),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.compare_arrows)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications_none)),
              // Stack(children: [
              //   IconButton(
              //       onPressed: () {},
              //       icon: const Icon(Icons.notifications_none)),
              //   const Positioned(
              //     child: CircleAvatar(
              //       backgroundColor: Colors.red,
              //       radius: 3,
              //     ),
              //     top: 15,
              //     right: 16,
              //   ),
              // ]),
            ],
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(92);
}
