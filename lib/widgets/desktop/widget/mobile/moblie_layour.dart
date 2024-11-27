import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_dashborad/model/health_descraption.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/utils/images.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/card.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/container_icon.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/title_header.dart';

class MobileLayour extends StatelessWidget {
  const MobileLayour({super.key});

  @override
  Widget build(BuildContext context) {
    List<HealthDescraption> deatiles = [
      HealthDescraption(
          icon: Assets.assetsImagesBloodPresse,
          color: const Color(0xFFD0FAFF),
          Quantity: '102',
          Ttitle: 'Blood Pressure',
          Unit: '/ 72 mmhg',
          image: Assets.assetsImagesWeav1,
          reate: 'Normal'),
      HealthDescraption(
          icon: Assets.assetsImagesHeartRate,
          color: const Color(0xFFFBF0F3),
          Quantity: '98',
          Ttitle: 'Heart Rate',
          Unit: 'bpm',
          image: Assets.assetsImagesWeav2,
          reate: 'Normal'),
      HealthDescraption(
          icon: Assets.assetsImagesBloodSugar,
          color: const Color(0xFFF8DEBD),
          Quantity: '80',
          Ttitle: 'Blood Sugar',
          Unit: 'mg / dL',
          image: Assets.assetsImagesWeav3,
          reate: 'Normal'),
    ];
    return Container(
      color: const Color.fromARGB(244, 242, 238, 227),
      child: Padding(
        padding: const EdgeInsets.only(top: 52, right: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHeader(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Cards(
                  obverview: deatiles[2],
                )),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Cards(
                  obverview: deatiles[1],
                )),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Cards(
                  obverview: deatiles[0],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}