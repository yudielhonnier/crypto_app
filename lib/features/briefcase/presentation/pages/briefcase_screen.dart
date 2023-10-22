import 'package:crypto_app/features/briefcase/presentation/pages/desktop_body.dart';
import 'package:crypto_app/features/briefcase/presentation/pages/mobile_body.dart';
import 'package:crypto_app/features/briefcase/presentation/pages/tablet_body.dart';
import 'package:crypto_app/features/shared/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class BriefcaseScreen extends StatefulWidget {
  const BriefcaseScreen({super.key});

  @override
  BriefcaseScreenState createState() => BriefcaseScreenState();
}

class BriefcaseScreenState extends State<BriefcaseScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: const MobileBriefcaseBody(),
        tabletBody: const TabletBriefcaseBody(),
        desktopBody: DesktopBriefcaseBody());
  }
}
