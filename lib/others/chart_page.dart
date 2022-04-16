// import 'package:crypto_app/themes/theme_constants.dart';
// import 'package:crypto_app/widgets/line_chart_widget.dart';
// import 'package:flutter/material.dart';

// class ChartPage extends StatefulWidget {
//   const ChartPage({Key? key}) : super(key: key);

//   @override
//   State<ChartPage> createState() => _ChartPageState();
// }

// class _ChartPageState extends State<ChartPage> {

//   @override
//   Widget build(BuildContext context) {
//     // Initial Selected Value
//   String dropdownvalue = 'ETH/USDT';

//   // List of items in our dropdown menu
//   var items = [
//     'ETH/USDT',
//     'BlaBlaBla',
//     'BlaBlaBla',
//     'BlaBlaBla',
//     'BlaBlaBla',
//   ];

//   var _kTapPages=<Widget>[
//     Container(child: Icon(Icons.ac_unit_sharp),),
//     Container(child: Icon(Icons.ac_unit_sharp),),
//     Container(child: Icon(Icons.ac_unit_sharp),),
//     Container(child: Icon(Icons.ac_unit_sharp),)
//   ];

//   var _ktabs=<Tab>[
//     Tab(icon: Icon(Icons.cloud),text: 'Tab1',),
//     Tab(icon: Icon(Icons.cloud),text: 'Tab2',),
//     Tab(icon: Icon(Icons.cloud),text: 'Tab3',),
//     Tab(icon: Icon(Icons.cloud),text: 'Tab3',),
//   ];
//   // var 

//     final size=MediaQuery.of(context).size;
//     return 
    
//     Container(
     
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: 
//          PreferredSize(
//           preferredSize: Size.fromHeight(76),
//           child: Column(
            
//             children: [
//               Container(
//          decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//               Color.fromARGB(255,17,24,36),
//                  Color.fromARGB(255,6,13,24)]),
//                 borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))
//               ),
//               height: 20,),
//               AppBar(
//               automaticallyImplyLeading: false,
                
//                   elevation: 0,
//                     // centerTitle: true,
//                         title:    Container(
//                       alignment: AlignmentDirectional.centerStart,
//                       padding: EdgeInsets.only(left: 5,right: 0),
//                       // child: Text('Portafolio',style: TextStyle(fontSize: 16),)
//                     child: GestureDetector(
//                       child: Row(
//                         children: [
//                          Icon(
//                          Icons.arrow_back_ios,size: 16,
//                        ),
//                           Text('Portafolio',style: TextStyle(fontSize: 16),),
//                         ],
//                       ),
                     
//                        onTap: ()=>Navigator.pushNamed(context,'/home' ),
//                     ) 

//                     ),
//                 actions: [
//                         DropdownButtonHideUnderline(
//                         child: DropdownButton(
//                           // Initial Value
//                           value: dropdownvalue,
//                           // Down Arrow Icon
//                           icon: const Icon(Icons.keyboard_arrow_down_outlined,size: 25,),
//                           // Array list of items
//                           items: items.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(items),
//                             );
//                           }).toList(),
//                           // After selecting the desired option,it will
//                           // change button value to selected value
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropdownvalue = newValue!;
//                             });
//                           },
//                         ),
//                       ),
//                      SizedBox(width: 80,),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.star_outline)),
//                 ],
//               ),
//             ],
//           ),
//         ),
        
//         body: Stack(children: [

//           Container(
//               color: darkTheme.colorScheme.primary,
//             padding: EdgeInsets.only(left: 20, right: 20),
//             child: Column(
//               children: [
//                     SizedBox(child: Container(),height: 40,),
//                Row(
//                   children: [
//                     Text('\$5,271.39',style: TextStyle(fontSize: 26),),
//                     Expanded(child: Container()),
//                         Text('Hig',style: TextStyle(fontSize: 16,color: Colors.green),),
//                         SizedBox(width: 36,),                           
//                         Text('Low',style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary,fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//                 SizedBox(height: 4,),
//                 Row(
//                   children: [
//                         Text('+130.62%',style: TextStyle(fontSize: 16,color: Colors.green),),
//                            SizedBox(width: 10,),     
//                         Text('+900.62',style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary,fontWeight: FontWeight.bold)),
//                           Expanded(child: Container()),
//                           Text('+130.62%',style: TextStyle(fontSize: 16,color: Colors.green),),
//                            SizedBox(width: 10,),     
//                         Text('+900.62',style: TextStyle(fontSize: 16,color: darkTheme.colorScheme.secondary,fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//                  SizedBox(child:  Container(),height: 40,),
//                     Flexible(child: 
//                     LineChartWidget(
//                    data: [0.2,65.5,123.23,45.676,9.56,2.3444],
//                    width: double.infinity,
//                    height: 240,
//                    color: Colors.white,
//                  )),
                 
             
//                   SizedBox(child:  Container(
//                   // padding: EdgeInsets.only(top: 10),
//                   alignment: AlignmentDirectional.bottomStart,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
                    
//                     Card(
//                       child: Text('D'),
//                     ),
//                     Card(
//                       child: Text('W'),
//                     ),
//                     Card(
//                       child: Text('M'),
//                     ),
//                     Card(
//                       child: Text('6M'),
//                     ),
//                     Card(
//                       child: Text('Y'),
//                     ),
//                     Card(
//                       child: Text('Y'),
//                     ),
//                     Card(
//                       child: Text('All'),
//                     ),
//                     Card(
//                       child: Text(''),
//                     ),
//                     Card(
//                       child: Icon(Icons.aspect_ratio),
//                     ),
//                   ],)),height: 60,),
//                 SizedBox(
//                     child: Container(),
//                     height:300,
//                   ),
                  
//               ],
//             ),
//           ),
     
       
           

//           //         )),
//         ]),
//       ),

//     );
//   }
// }








