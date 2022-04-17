part of '../../../components/widgets.dart';

class ListCoinsWithoutChart extends StatelessWidget {
  const ListCoinsWithoutChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:280,
      child: ListView.separated(
        separatorBuilder:(context, index) =>Divider(color:darkTheme.colorScheme.secondary ,height: 18,), 
        padding: EdgeInsets.only(right: 0),
        shrinkWrap: true,
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
    );
  }
}




