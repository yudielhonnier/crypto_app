part of '../../../components/widgets.dart';

class CardsTimeChart extends StatelessWidget {
  const CardsTimeChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
        alignment: AlignmentDirectional.bottomStart,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('D')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('W')),
            ),
            Card(
              color: darkTheme.colorScheme.secondary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('M')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 20,
                  child: Text('6M')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('Y')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('Y')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('All')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Text('')),
            ),
            Card(
              color: darkTheme.colorScheme.primary,
              child: Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: Icon(Icons.aspect_ratio)),
            ),
          ],
        ));
  }
}
