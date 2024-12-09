import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/middle_section.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/rigth_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        MiddleSection(),
        RigthSection(),
      ],
    ));
  }
}
