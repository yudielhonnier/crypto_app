import 'package:flutter/material.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:go_router/go_router.dart';

class AppBarTrading extends StatelessWidget implements PreferredSize {
  const AppBarTrading(
      {Key? key,
      required this.dropdownvalue,
      required this.items,
      required this.context})
      : super(key: key);

  final String dropdownvalue;
  final List<String> items;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(92),
      child: child,
    );
  }

  @override
  // TODO: implement child
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
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.only(left: 5, right: 0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: darkTheme.colorScheme.secondary,
                      ),
                      Text(
                        'Briefcase',
                        style: TextStyle(
                            fontSize: 16,
                            color: darkTheme.colorScheme.secondary),
                      ),
                    ],
                  ),
                  onTap: () => context.pop(context),
                )),
            actions: [
              DropdownButtonHideUnderline(
                child: DropdownButtonAppBar(
                    dropdownvalue: dropdownvalue, items: items),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(92);
}

class DropdownButtonAppBar extends StatefulWidget {
  DropdownButtonAppBar({
    Key? key,
    required this.dropdownvalue,
    required this.items,
  }) : super(key: key);

  String dropdownvalue;
  final List<String> items;

  @override
  State<DropdownButtonAppBar> createState() => _DropdownButtonAppBarState();
}

class _DropdownButtonAppBarState extends State<DropdownButtonAppBar> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: widget.dropdownvalue,
      // Down Arrow Icon
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        size: 25,
      ),
      // Array list of items
      items: widget.items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          widget.dropdownvalue = newValue!;
        });
      },
    );
  }
}
