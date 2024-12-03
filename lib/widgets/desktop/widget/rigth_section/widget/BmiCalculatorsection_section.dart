import 'package:flutter/material.dart';

import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/higthandwigth_section.dart';

class BmiCalculatorsection extends StatelessWidget {
  const BmiCalculatorsection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Higthandwigth(
              title: 'Height',
              amount: '170 ',
              color: Color(0xFFF7DEBC),
              unit: 'CM',
            ),
            SizedBox(
              height: 20,
            ),
            Higthandwigth(
              title: 'Weight',
              amount: '72 kg',
              color: Color(0xFFD0FAFF),
              unit: 'Kg',
            ),
          ],
        )),
        // Expanded(flex: 2, child: Bodymass())
      ],
    );
  }
}
