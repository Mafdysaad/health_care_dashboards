import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/dropdown.dart';

class HeaderChart extends StatelessWidget {
  const HeaderChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Activity Growth',
          style: Fontstyle.mulish_boled20(context),
        ),
        const Spacer(),
        const Custom_Dropdownmenue(
          title: 'Jan 2021',
          bordercolor: Color(0xFFE1E1E1),
        ),
      ],
    );
  }
}
