import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:healthcare_dashborad/model/health_descraption.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/header_card.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/reat.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.obverview});
  final HealthDescraption obverview;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E6E6)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 50,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCard(
              title: obverview.Ttitle,
              image: obverview.icon,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  obverview.Quantity,
                  style: Fontstyle.mulish_regular32
                      .copyWith(color: const Color(0xFF272927)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  obverview.Unit,
                  style: Fontstyle.mulish_boled16,
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Reat(color: obverview.color, text: obverview.reate),
            SvgPicture.asset(obverview.image)
          ],
        ),
      ),
    );
  }
}
