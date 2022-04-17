part of '../../../components/widgets.dart';


class Notes extends StatelessWidget {
  const Notes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: const Icon(Icons.ac_unit_sharp),
    );
  }
}
