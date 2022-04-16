part of 'widgets.dart';

class AppBarTrading extends StatelessWidget implements PreferredSize{
  const AppBarTrading({
    Key? key,
    required this.dropdownvalue,
    required this.items,
    required this.context
  }) : super(key: key);

  final String dropdownvalue;
  final List<String> items;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(76),
      child:child,
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
            height: 10,
          ),
          AppBar(
            automaticallyImplyLeading: false,

            elevation: 0,
            // centerTitle: true,
            title: Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.only(left: 5, right: 0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: darkTheme.colorScheme.secondary,
                      ),
                      Text(
                        'Portafolio',
                        style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary),
                        
                      ),
                    ],
                  ),
                  onTap: () => Navigator.pushNamed(context, '/wallet'),
                )),
            actions: [
              DropdownButtonHideUnderline(
                child: DropdownButtonAppBar(dropdownvalue: dropdownvalue, items: items),
              ),
              SizedBox(
                width: 90,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.star_outline)),
            ],
          ),
        ],
   ) ;

  @override
  Size get preferredSize =>  Size.fromHeight(76);
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