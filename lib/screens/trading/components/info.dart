part of '../../../components/widgets.dart';



class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: Icon(Icons.ac_unit_sharp),
    );
  }
}
