import 'package:crypto_app/features/shared/data/models/step_area_data.dart';
import 'package:crypto_app/features/trading/presentation/widgets/ask_order_book.dart';
import 'package:crypto_app/features/trading/presentation/widgets/bid_order_book.dart';

import 'package:flutter/material.dart';

class OrderBook extends StatelessWidget {
  const OrderBook({
    Key? key,
    required this.chartData,
    required this.size,
  }) : super(key: key);

  final List<StepAreaData> chartData;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(children: [
          Column(
            children: [
              Expanded(flex: 4, child: BidOrderBook()),
              SizedBox(
                height: 10,
              ),
              Expanded(flex: 1, child: ButtonsOrderBook()),
            ],
          ),
        ]));
  }
}
