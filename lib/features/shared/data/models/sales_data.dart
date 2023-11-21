import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData{
  SalesData(this.year,this.sales);
  final double year;
  final double sales;
}

List<SalesData> getChartData(){
  final List<SalesData> chartData=[
    SalesData(2017, 23),
    SalesData(2018, 29),
    SalesData(2019, 19),
    SalesData(2020, 60),
    // SalesData(2020, 46),
    // SalesData(2020, 36),
    // SalesData(2020, 26),
    // SalesData(2020, 206),
    // SalesData(2020, 600),
  ];
  return chartData;
}
