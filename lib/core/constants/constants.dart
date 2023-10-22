import 'package:crypto_app/features/shared/models/chart_circular_data.dart';
import 'package:crypto_app/features/shared/models/step_area_data.dart';
import 'package:flutter/material.dart';

List<ChartCircularData> data = [
  ChartCircularData('CHN', 12, Colors.red),
  ChartCircularData('GER', 15, Colors.green),
  ChartCircularData('RUS', 30, Colors.yellow),
  ChartCircularData('BRZ', 6.4, Colors.blue),
  ChartCircularData('IND', 14, Colors.white)
];

final colorsGradient = [
  const Color.fromARGB(0, 6, 13, 24),
  const Color.fromARGB(220, 6, 13, 24),
  const Color.fromARGB(255, 6, 13, 24)
];

List<StepAreaData> chartData = <StepAreaData>[
  StepAreaData(1, 23, -29),
  StepAreaData(2, 13, -7),
  StepAreaData(3, 4, -90),
  StepAreaData(4, 90, -50),
  StepAreaData(5, 40, -5),
];
