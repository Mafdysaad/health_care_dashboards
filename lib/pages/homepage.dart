import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/adaptive_layout/adaptive_layout.dart';
import 'package:healthcare_dashborad/widgets/desktop/desktop_latyout.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdabtiveLayout(
      MobileLayout: (context) => const SizedBox(),
      TablietLayout: (context) => const SizedBox(),
      DesktopLayout: (context) => const DesktopLatyout(),
    ));
  }
}
