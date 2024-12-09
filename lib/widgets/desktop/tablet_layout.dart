import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/drawer.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/middle_section.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/rigth_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custom_drawer(),
        const Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MiddleSection(),
                RigthSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
