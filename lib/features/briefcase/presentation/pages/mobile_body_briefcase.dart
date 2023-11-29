import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/features/briefcase/presentation/widgets/circular_chart.dart';
import 'package:crypto_app/features/shared/presentation/bloc/tickets/tickets_bloc.dart';
import 'package:crypto_app/features/shared/presentation/widgets/app_bar_shared.dart';
import 'package:crypto_app/features/shared/presentation/widgets/bottom_gradient.dart';
import 'package:crypto_app/features/shared/presentation/widgets/card_wallet_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/list_view_my_tickets.dart';

class MobileBriefcaseBody extends StatefulWidget {
  const MobileBriefcaseBody({super.key});

  @override
  State<MobileBriefcaseBody> createState() => _MobileBriefcaseBodyState();
}

class _MobileBriefcaseBodyState extends State<MobileBriefcaseBody> {
  @override
  Widget build(BuildContext context) {
    late double contextHeight = context.height;
    late double contextWidth = context.width;
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.primary,
      // backgroundColor: Colors.white,
      appBar: AppBarShared(
        name: 'Briefcase',
        context: context,
      ),
      body: Stack(children: [
        Container(
          color: darkTheme.colorScheme.primary,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CircularChart(
                data: data,
                isMovile: true,
              ),
              const SizedBox(
                height: 18,
              ),
              const CardWalletActions(),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Builder(builder: (context) {
                final ticketsBloc = context.watch<TicketsBloc>();

                if (ticketsBloc.state.status == TicketStatus.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (ticketsBloc.state.status ==
                    TicketStatus.listLoaded) {
                  return ListViewTickets(
                    context: context,
                    tickets: ticketsBloc.state.ticketList,
                  );
                } else if (ticketsBloc.state.status == TicketStatus.failure) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                      Text("Error ${ticketsBloc.state}",
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
              })),
            ],
          ),
        ),
        BottomGradient(
            size: Size(contextWidth, contextHeight),
            colors: colorsGradient,
            height: 170,
            bottom: 0)
      ]),
    );
  }
}
