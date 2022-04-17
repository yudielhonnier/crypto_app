part of '../../../components/widgets.dart';

class StaticticsWalletHome extends StatelessWidget {
  const StaticticsWalletHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         
        Row(
          children: [
            Text(
              'PORTAFOLIO',
              style: TextStyle(
                  fontSize: 13,
                  color: darkTheme.colorScheme.secondary,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            // GestureDetector(
            //   child: Icon(
            //     Icons.arrow_forward_ios_outlined,
            //     size: 16,
            //   ),
            //   onTap: () => Navigator.pushNamed(context, '/wallet'),
            // )
          IconButton(
            onPressed:(){Navigator.pushNamed(context, '/wallet');}, 
            icon:  Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
              ),)
            
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '\$5,271.39',
              style: TextStyle(fontSize: 46),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  '+130.62%',
                  style:
                      TextStyle(fontSize: 16, color: Colors.green),
                ),
                Text('+900.62',
                    style: TextStyle(
                        fontSize: 16,
                        color: darkTheme.colorScheme.secondary,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
