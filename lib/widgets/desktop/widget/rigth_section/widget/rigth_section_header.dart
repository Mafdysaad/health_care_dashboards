import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/dropdown.dart';

class RigthSectionHeader extends StatelessWidget {
  const RigthSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'BMI Calculator',
          style: Fontstyle.mulish_regular22(context),
        ),
        const Spacer(),
        const Custom_Dropdownmenue(
          title: 'Last Week',
          bordercolor: Color(0xFFC9C9C9),
          titlecolor: Color(0xFFC9C9C9),
        )
      ],
    );
  }
}
