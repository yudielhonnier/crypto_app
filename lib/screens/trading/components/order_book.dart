part of '../../../components/widgets.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(children: [
        Column(
          children: [
            const Spacer(),
            RotatedBox(
              quarterTurns: 3,
              child: SizedBox(
                  width: 160, child: StepAreaChart(chartData: chartData)),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
        Column(
          children: [
            BidOrderBook(),
            SizedBox(
              height: 10,
            ),
            AskOrderBook(),
          ],
        ),
        BottomGradient(
            size: size,
            colors: [
              Color.fromARGB(0, 6, 13, 24),
              Color.fromARGB(100, 6, 13, 24),
              Color.fromARGB(200, 6, 13, 24),
              Color.fromARGB(200, 6, 13, 24)
            ],
            height: 210,
            bottom: 0,
            ),
         
      ]),
    );
  }
}
