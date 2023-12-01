import 'package:crypto_app/core/helpers/is_empty.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/presentation/widgets/bottom_gradient.dart';
import 'package:crypto_app/injector/injector.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  State<CardsScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<MarketsBloc>()..add(GetMarketsEvent(page: 0)),
          ),
        ],
        child: SafeArea(
          child: Scaffold(
            backgroundColor: darkTheme.colorScheme.primary,
            appBar: AppBarShared(
              name: 'Cards',
              context: context,
            ),
            body: _buildBody(),
          ),
        ));
  }

  Widget _buildBody() {
    final size = MediaQuery.of(context).size;
    final colorsGradient = [
      const Color.fromARGB(0, 6, 13, 24),
      const Color.fromARGB(220, 6, 13, 24),
      const Color.fromARGB(255, 6, 13, 24)
    ];

    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Add your bank card',
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        child: _buildAlias(),
                      ),
                      Container(
                        child: _buildCard(),
                      ),
                    ]),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                  )),
              //  padding: const EdgeInsets.symmetric(vertical: 10.0),
              // color: Colors.grey,
              child: const Row(
                children: [
                  Icon(Icons.save_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SAVE',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      BottomGradient(size: size, colors: colorsGradient, height: 170, bottom: 0)
    ]);
  }

  Widget _buildCard() {
    return TextFormField(
      initialValue: '',
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        labelText: 'Card Number',
      ),
      onSaved: (value) => {},
      validator: (value) {
        return (isNumeric(value!)) ? null : 'Only numbers';
      },
    );
  }

  Widget _buildAlias() {
    return TextFormField(
      initialValue: 'Alias',
      decoration: const InputDecoration(
        labelText: 'Alias',
      ),
      onSaved: (value) => {},
      validator: (value) {
        return (isNumeric(value!)) ? null : 'Only numbers';
      },
    );
  }
}
