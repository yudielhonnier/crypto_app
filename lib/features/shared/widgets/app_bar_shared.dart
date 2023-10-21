import 'package:crypto_app/config/router/my_router.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:go_router/go_router.dart';

class AppBarShared extends StatelessWidget implements PreferredSize {
  const AppBarShared({
    required this.context,
    required this.name,
    showHelp,
    Key? key,
  })  : showHelp = showHelp ?? true,
        super(key: key);

  final BuildContext context;
  final String name;
  final bool showHelp;

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
            leading: GestureDetector(
              onTap: () => context.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                size: 16,
                color: darkTheme.colorScheme.secondary,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            title: Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
            actions: [
              showHelp
                  ? IconButton(
                      onPressed: () => context.push(MyRouter.helpRoute),
                      icon: const Icon(Icons.help_outline_rounded))
                  : const SizedBox()
            ],
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(76);
}
