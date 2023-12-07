import 'package:crypto_app/features/trading/presentation/bloc/grafic_bloc.dart';

///return a list of dropdown values , based
///
///on the enum VsCurrency values
List<String> getDropdownvalues(String coin) {
  List<String> values = [];

  for (var element in VsCurrency.values) {
    values.add('${coin.toUpperCase()}/${element.name.toUpperCase()}');
  }

  if (values.isEmpty) return ['BTC/USD'];

  return values;
}

List<double> getLineChartDataList(List<List<num>> numers) {
  return numers.map((e) => e[1] as double).toList();
}
