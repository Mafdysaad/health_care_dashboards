import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/drawer.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/moble_layout/moblie_layour.dart';

class DesktopLatyout extends StatelessWidget {
  const DesktopLatyout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custom_drawer(),
        const MobileLayour(),
      ],
    );
  }
}
