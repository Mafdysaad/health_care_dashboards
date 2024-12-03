import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/drawer.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/moblie_layour.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/rigth_section.dart';

class DesktopLatyout extends StatelessWidget {
  const DesktopLatyout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custom_drawer(),
        const Expanded(flex: 3, child: MobileLayour()),
        const Expanded(flex: 2, child: RigthSection()),
      ],
    );
  }
}
