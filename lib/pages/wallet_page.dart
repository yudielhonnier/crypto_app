import 'package:crypto_app/models/sales_data.dart';
import 'package:crypto_app/themes/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WalletPage extends StatefulWidget {
  @override
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<_ChartData> data = [
      _ChartData('CHN', 12, Colors.red),
      _ChartData('GER', 15, Colors.green),
      _ChartData('RUS', 30, Colors.yellow),
      _ChartData('BRZ', 6.4, Colors.blue),
      _ChartData('IND', 14, Colors.white)
    ];

    var _kTapPages = <Widget>[
      Container(
        child: Icon(Icons.ac_unit_sharp),
      ),
      Container(
        child: Icon(Icons.ac_unit_sharp),
      ),
      Container(
        child: Icon(Icons.ac_unit_sharp),
      ),
      Container(
        child: Icon(Icons.ac_unit_sharp),
      )
    ];

    var _ktabs = <Widget>[
      Container(
        child: Tab(
          text: 'Order Book',
        ),
      ),
      Container(
        child: Tab(
          text: 'History',
        ),
      ),
      Container(
          child: Tab(
        text: 'Notes',
      )),
      Container(
          child: Tab(
        text: 'Info',
      )),
    ];
    // var

    List<_StepAreaData> chartData = <_StepAreaData>[
      _StepAreaData(1, 23, -29),
      _StepAreaData(2, 13, -7),
      _StepAreaData(3, 4, -90),
      _StepAreaData(4, 90, -50),
      _StepAreaData(5, 40, -5),
    ];

    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      // backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(76),
        child: Column(
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
                          'Home',
                          style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary,),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, '/home'),
                  )),
              actions: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Portafolio',
                   style: TextStyle(fontSize: 16),
                   ),
                  
                  ),
                SizedBox(
                  width: 110,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_circle_up_sharp)),
              ],
            ),
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          color: darkTheme.colorScheme.primary,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                child: Container(),
                height: 20,
              ),
              SizedBox(
                height: 4,
              ),
              Stack(children: [
                SfCircularChart(series: <CircularSeries>[
                  // Renders doughnut chart
                  DoughnutSeries<_ChartData, String>(
                      radius: '130',
                      innerRadius: '120',
                      dataSource: data,
                      pointColorMapper: (_ChartData data, _) => data.color,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y)
                ]),
                Positioned(
                    top: size.height * 0.14,
                    left: (size.width) * 0.24,
                    child: Container(
                      // color: Colors.red,
                      child:  Column(
                            children: [
                                Text(
                            '\$5,271.39',
                            style: TextStyle(fontSize: 36),
                          ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Text(
                                '+130.62%',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              SizedBox(width: 10,),
                              Text('+900.62',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: darkTheme.colorScheme.secondary,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    )),
              ]),
          
              SizedBox(
                child: Container(),
                height: 18,
              ),
              Card(
                margin: EdgeInsets.only(left: 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: darkTheme.colorScheme.secondary,
                child: Container(
                  margin: EdgeInsets.only(top: 14, bottom: 16),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.auto_graph_sharp),
                          Expanded(child: Container()),
                          Text('ANALYTICS', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black87,
                        width: 0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_forward_outlined),
                          Expanded(child: Container()),
                          Text('WITHDRAW', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black87,
                        width: 0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_back),
                          Expanded(child: Container()),
                          Text('DEPOSIT', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.35,
          minChildSize: 0.35,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(right: 0),
                      shrinkWrap: true,
                      controller: scrollController,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Flexible(
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/chart'),
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
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Container(
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
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Opacity(
              opacity: 1,
              child: Container(
                // color:Color.fromARGB(255,6,13,24) ,
                height: 120,
                width: size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(50, 6, 13, 24),
                          Color.fromARGB(100, 6, 13, 24),
                          Color.fromARGB(200, 6, 13, 24),
                          Color.fromARGB(200, 6, 13, 24)
                        ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ))
      ]),
    );
  }
}

/// Private class for storing the step area chart data point.
class _StepAreaData {
  _StepAreaData(this.x, this.high, this.low);
  final num x;
  // final num x;
  final double high;
  final double low;
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
