import 'package:crypto_app/config/router/my_router.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:go_router/go_router.dart';

class AppBarShared extends StatelessWidget implements PreferredSize {
  const AppBarShared({
    required this.context,
    required this.name,
    required this.rightSpace,
    showHelp,
    Key? key,
  })  : showHelp = showHelp ?? true,
        super(key: key);

  final BuildContext context;
  final String name;
  final double rightSpace;
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
                    ],
                  ),
                  onTap: () => context.pop(),
                )),
            actions: [
              Center(
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                width: rightSpace,
              ),
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
