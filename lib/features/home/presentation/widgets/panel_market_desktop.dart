import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_markets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PanelMarketDesktop extends StatefulWidget {
  String dropdownValue;
  final List<String> items;

  PanelMarketDesktop(
      {super.key, required this.dropdownValue, required this.items});

  @override
  State<PanelMarketDesktop> createState() => _PanelMarketsState();
}

class _PanelMarketsState extends State<PanelMarketDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 17, 23, 35),
                Color.fromARGB(255, 6, 13, 24)
              ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          const Expanded(
            flex: 1,
            child: Center(
                child: Text(
              'Market',
              style: TextStyle(fontSize: 24),
            )),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: SizedBox(
              child: Row(
                children: [
                  Text('Sort by:',
                      style: TextStyle(
                          fontSize: 16,
                          color: darkTheme.colorScheme.secondary,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 5,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      value: widget.dropdownValue,
                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.align_vertical_bottom,
                        size: 12,
                      ),
                      // Array list of items
                      items: widget.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          widget.dropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.dehaze,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Builder(
              builder: (BuildContext context) {
                final marketState = context.watch<MarketsBloc>().state;

                if (marketState is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (marketState is Loaded) {
                  return ListViewMarkets(
                    context: context,
                    markets: marketState.markets,
                  );
                } else if (marketState is Error) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Error ${marketState.message}",
                          textAlign: TextAlign.center),
                      ElevatedButton(
                        onPressed: () {
                          // BlocProvider.of<RemotePostBloc>(context)
                          //     .add(GetRemotePosts());
                        },
                        child: const Text("Try again"),
                      )
                    ])),
                  );
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }
}
