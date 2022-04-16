part of 'widgets.dart';
//todo make constructor for variables
class PanelMarket extends StatefulWidget {
// Initial Selected Value
 String dropdownvalue = 'Capitalization';

  var items = [
    'Capitalization',
    'BlaBlaBla',
    'BlaBlaBla',
    'BlaBlaBla',
    'BlaBlaBla',
  ];

   PanelMarket({
    Key? key,
  }) : super(key: key);

  @override
  State<PanelMarket> createState() => _PanelMarketState();
}

class _PanelMarketState extends State<PanelMarket> {
 

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      minChildSize: 0.35,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 17, 23, 35),
                    Color.fromARGB(255, 6, 13, 24)
                  ]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            IconButton(
                // color: darkTheme.colorScheme.secondary,
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_up_sharp,
                )),
            Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  'Market',
                  style: TextStyle(fontSize: 26),
                )),
            Row(
              children: [
                Text('Sort by:',
                    style: TextStyle(
                        fontSize: 16,
                        color: darkTheme.colorScheme.secondary,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 5,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    // Initial Value
                    value: 'Capitalization',
                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.align_vertical_bottom,
                      size: 12,
                    ),
                    // Array list of items
                    items: [
    'Capitalization',
    'BlaBlaBla',
    'BlaBlaBla',
    'BlaBlaBla',
    'BlaBlaBla',
  ].map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      // setState(() {
                      //   dropdownvalue = newValue!;
                      // });
                    },
                  ),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  child: Container(
                    child: Icon(
                      Icons.dehaze,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(right: 0),
                  shrinkWrap: true,
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Flexible(
                            child: ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: CircleAvatar(
                                backgroundColor:
                                    darkTheme.colorScheme.secondaryVariant,
                                child: Icon(
                                  Icons.monetization_on_outlined,
                                ),
                                radius: 24.0,
                              ),
                              title: Text('Bitcoin '),
                              subtitle: Text('BTC'),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          LineChartWidget(
                            data: [0.2, 65.5, 123.23, 45.676, 9.56, 2.3444],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                const Spacer(),
                                SizedBox(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Text('32811.00',
                                          style: TextStyle(fontSize: 20)),
                                      Row(
                                        children: [
                                          Text('-761.0',
                                              style:
                                                  TextStyle(fontSize: 12)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('-2.27%',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.red)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
                  },
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}