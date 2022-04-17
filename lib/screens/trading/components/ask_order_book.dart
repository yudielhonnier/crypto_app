
part of '../../../components/widgets.dart';

class AskOrderBook extends StatelessWidget {
  const AskOrderBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('BUY',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.green),
                padding: MaterialStateProperty.all(
                    EdgeInsets.all(14)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius:
                          BorderRadius.circular(30)),
                )),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('SELL',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ),),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                    EdgeInsets.all(14)),
                      shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius:
                          BorderRadius.circular(30)),
                )
                    ),
          ),
        ),
      ],
    );
  }
}

