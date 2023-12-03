import 'package:crypto_app/core/helpers/round.dart';
import 'package:crypto_app/features/home/presentation/bloc/markets_bloc.dart';
import 'package:crypto_app/features/home/presentation/widgets/list_view_markets.dart';
import 'package:crypto_app/features/shared/presentation/cubit/app_shadow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:crypto_app/config/themes/theme_constants.dart';

import '../../../../core/resources/toast_service.dart';
import '../../../shared/presentation/bloc/tickets/tickets_bloc.dart';

class SlidingUpPanelMarket extends StatefulWidget {
// Initial Selected Value
  String dropdownvalue;

  final List<String> items;

  SlidingUpPanelMarket({
    required this.items,
    required this.dropdownvalue,
    Key? key,
  }) : super(key: key);

  @override
  State<SlidingUpPanelMarket> createState() => _SlidingUpPanelMarketState();
}

class _SlidingUpPanelMarketState extends State<SlidingUpPanelMarket> {
  final double _initFabHeight = 120.0;

  double _fabHeight = 0;

  double _panelHeightOpen = 0;

  double _panelHeightClosed = 50.0;

  final PanelController _pc = PanelController();

  @override
  void initState() {
    super.initState();

    _fabHeight = _initFabHeight;
  }

  IconData? _getIconByHeigth() {
    num heightPanel = yround(_pc.panelPosition).abs();
    if (heightPanel == 0) {
      return Icons.remove_red_eye_outlined;
    }

    return Icons.close_rounded;
  }

  double _initSnapPoint() {
    return _panelHeightClosed == 230 ? 0.60 : 0.7;
  }

  @override
  Widget build(BuildContext context) {
    final appShadowCubit = context.read<AppShadowCubit>();
    _panelHeightClosed = appShadowCubit.state == const AppShadowState.show()
        ? 230
        : _panelHeightClosed;
    _panelHeightOpen = MediaQuery.of(context).size.height * .94;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[200],
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.black,
    ));

    return SlidingUpPanel(
      snapPoint: _initSnapPoint(),
      controller: _pc,
      backdropEnabled: false,
      backdropColor: Colors.black,
      color: darkTheme.colorScheme.primary,
      maxHeight: _panelHeightOpen,
      minHeight: _panelHeightClosed,
      parallaxEnabled: true,
      parallaxOffset: .5,
      panel: _panel(_pc),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      onPanelSlide: (double pos) {
        setState(() {
          _fabHeight =
              pos * (_panelHeightOpen - _panelHeightClosed) + _initFabHeight;
        });
      },
      onPanelOpened: () {},
      onPanelClosed: () {},
    );
  }

  Widget _panel(PanelController pc) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 17, 23, 35),
              Color.fromARGB(255, 6, 13, 24)
            ]),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
              ),
              const Spacer(),
              //CLOSE BUTTON
              Builder(builder: (context) {
                final appShadowCubit = context.read<AppShadowCubit>();

                return IconButton(
                    onPressed: () {
                      if (pc.panelPosition.abs() > 0.0) {
                        pc.animatePanelToPosition(0.0);
                        appShadowCubit.hideShadow();
                      }

                      if (pc.panelPosition.abs() == 0.0) {
                        pc.animatePanelToPosition(_initSnapPoint());
                      }
                    },
                    icon: Icon(_getIconByHeigth()));
              }),
            ],
          ),
          const Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Text(
                'Market',
                style: TextStyle(fontSize: 26),
              )),
          Row(
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
                  // Initial Value
                  value: widget.dropdownvalue,
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
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              Expanded(child: Container()),
              GestureDetector(
                child: const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Icon(
                      Icons.dehaze,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: BlocBuilder<MarketsBloc, MarketsState>(
              builder: (BuildContext context, state) {
                if (state is Loading) {
                  return const Column(
                    children: [
                      CircularProgressIndicator(
                        color: Colors.white,
                      ),
                      Spacer(),
                    ],
                  );
                } else if (state is Loaded) {
                  return ListViewMarkets(
                    context: context,
                    markets: state.markets,
                  );
                } else if (state is Error) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Error ${state.message}",
                          textAlign: TextAlign.center),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<MarketsBloc>(context)
                              .add(GetMarketsEvent(page: 0));
                        },
                        child: const Text("Try again"),
                      )
                    ])),
                  );
                }
                return Container();
              },
            ),
          ),
          //SHOW TOASTS
          Builder(builder: (context) {
            final ticketsBloc = context.watch<TicketsBloc>();

            final mayShowAlreadyToast =
                ticketsBloc.state.status == TicketStatus.alreadyExist;
            final mayShowAddedToast =
                ticketsBloc.state.status == TicketStatus.loaded;

            if (mayShowAlreadyToast) {
              ToastService.showToastWarning(context,
                  message:
                      'Ticket with id ${ticketsBloc.state.ticketModel.id} Already Exist!');
              ticketsBloc.add(const TicketsEvent.toastReaded());
            }

            if (mayShowAddedToast) {
              ToastService.showToastSuccessfull(context,
                  message:
                      'Ticket ${ticketsBloc.state.ticketModel.id} Added Successfully!');
              ticketsBloc.add(const TicketsEvent.toastReaded());
            }
            return Container();
          })
        ],
      ),
    );
  }
}
