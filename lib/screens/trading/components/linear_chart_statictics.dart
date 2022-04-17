part of '../../../components/widgets.dart';



class LinearChartStatictics extends StatelessWidget {
  const LinearChartStatictics({
    Key? key,
    required this.walletAmount,
    required this.higAmount,
    required this.lowAmount,
  }) : super(key: key);

  final String walletAmount;
  final String higAmount;
  final String lowAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const  SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Text(
             walletAmount,
              style: TextStyle(fontSize: 26),
            ),
          const Spacer(),
           const Text(
              'Hig',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
           const SizedBox(
              width: 36,
            ),
            Text('Low',
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
                     const SizedBox(
          height: 4,
        ),
        Row(
          children: [
           const Text(
              '+130.62%',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
           const SizedBox(
              width: 10,
            ),
            Text('+900.62',
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
            Expanded(child: Container()),
           Text(
              higAmount,
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
           const SizedBox(
              width: 10,
            ),
            Text(
              lowAmount,
                style: TextStyle(
                    fontSize: 16,
                    color: darkTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }
}