import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

class AppBarCards extends StatelessWidget implements PreferredSize {
  const AppBarCards({
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
            height: 10,
          ),
          AppBar(
            automaticallyImplyLeading: false,

            elevation: 0,
            // centerTitle: true,
            title: Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.only(left: 5.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: darkTheme.colorScheme.secondary,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 16,
                          color: darkTheme.colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  onTap: () => Navigator.pushNamed(context, '/home'),
                )),
            actions: [
              const Center(
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                width: 124,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.help_outline_rounded)),
            ],
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
