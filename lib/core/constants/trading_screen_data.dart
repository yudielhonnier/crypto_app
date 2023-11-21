// Initial Selected Value
import 'package:crypto_app/features/shared/data/models/step_area_data.dart';
import 'package:flutter/material.dart';

String dropdownvalue = 'ETH/USDT';

// List of items in our dropdown menu
var coinsPair = [
  'ETH/USDT',
  'BlaBlaBla1',
  'BlaBlaBla2',
  'BlaBlaBla3',
  'BlaBlaBla4',
];

var ktabs = <Widget>[
  const SizedBox(
    child: Tab(
      text: 'Order Book',
    ),
  ),
  const SizedBox(
    child: Tab(
      text: 'History',
    ),
  ),
  const SizedBox(
      child: Tab(
    text: 'Notes',
  )),
  const SizedBox(
      child: Tab(
    text: 'Info',
  )),
];
// var

List<double> lineChartDataList = [
  35.5,
  12,
  45.5,
  23.23,
  15.676,
  19.56,
  17.3444,
  80.5,
  75.23,
  82.676,
  82.56,
  102.3,
  90.444
];

List<StepAreaData> chartData = <StepAreaData>[
  StepAreaData(1, 23, -29),
  StepAreaData(2, 13, -7),
  StepAreaData(3, 4, -90),
  StepAreaData(4, 90, -50),
  StepAreaData(5, 40, -5),
];

String walletAmount = '\$5,271.39';
String higAmount = '130.62%';
String lowAmount = '+900.62';
