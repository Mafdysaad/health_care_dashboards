import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:healthcare_dashborad/model/body_measument.dart';

import 'package:healthcare_dashborad/utils/images.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/detailes_body_measurements.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/header_measurement_section.dart';

class BodyMeasurements extends StatelessWidget {
  const BodyMeasurements({super.key});

  @override
  Widget build(BuildContext context) {
    List<BodyMeasument_model> list = [
      BodyMeasument_model(title: 'Hip (in)', value: 42.5, color: Colors.green),
      BodyMeasument_model(title: 'Waist (in)', value: 34, color: Colors.green),
      BodyMeasument_model(title: ' Chest (in)', value: 44.5, color: Colors.red)
    ];
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Headersection(),
              const SizedBox(
                height: 73,
              ),
              Detailes(list: list)
            ],
          ),
        ),
        const SizedBox(
          width: 70,
        ),
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            Assets.assetsImagesImage,
          ),
        )
      ],
    );
  }
}
