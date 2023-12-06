import 'package:crypto_app/features/shared/presentation/widgets/responsive_layout.dart';
import 'package:crypto_app/features/trading/presentation/bloc/historical_market_bloc.dart';
import 'package:crypto_app/features/trading/presentation/pages/desktop_body_trading.dart';
import 'package:crypto_app/features/trading/presentation/pages/mobile_body_trading.dart';
import 'package:crypto_app/features/trading/presentation/pages/tablet_body_trading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injector/injector.dart';
import '../../../shared/data/models/ticket_model.dart';

class TradingScreen extends StatefulWidget {
  const TradingScreen({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  TradingScreenState createState() => TradingScreenState();
}

class TradingScreenState extends State<TradingScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<HistoricalMarketBloc>()
              ..add(HistoricalMarketEvent.getHistoricalMarket(widget.ticket)))
      ],
      child: ResponsiveLayout(
          mobileBody: MobileTradingBody(
            ticket: widget.ticket,
          ),
          tabletBody: TabletTradingBody(
            ticket: widget.ticket,
          ),
          desktopBody: DesktopTradingBody(
            ticket: widget.ticket,
          )),
    );
  }
}
