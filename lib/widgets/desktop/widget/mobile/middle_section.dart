import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_dashborad/model/health_descraption.dart';

import 'package:healthcare_dashborad/utils/images.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/Upcoming_section.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/card_section.dart';

import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/chart_section.dart';

import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/title_header.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: 52,
              right: MediaQuery.of(context).size.width < 1200 ? 20 : 40,
              left: MediaQuery.of(context).size.width < 1200 ? 20 : 40),
          child: Column(
            children: [
              const TitleHeader(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CardSection(
                    overview: deatiles[2],
                  )),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: CardSection(
                    overview: deatiles[1],
                  )),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: CardSection(
                    overview: deatiles[0],
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const ChartSection(),
              const SizedBox(
                height: 40,
              ),
              const UpcomingSection(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
