import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/size_config.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/BmiCalculatorsection_section.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/Body_Measurements.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/rigth_section_header.dart';

class RigthSection extends StatelessWidget {
  const RigthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF2F2F2F),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40),
              topRight: MediaQuery.of(context).size.width <= SizeConfig.desctop
                  ? const Radius.circular(40)
                  : const Radius.circular(0),
              bottomLeft:
                  MediaQuery.of(context).size.width <= SizeConfig.desctop
                      ? const Radius.circular(0)
                      : const Radius.circular(40),
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 40, bottom: 33, right: 40, left: 40),
          child: Column(
            children: [
              RigthSectionHeader(),
              SizedBox(
                height: 38,
              ),
              BmiCalculatorsection(),
              SizedBox(
                height: 40,
              ),
              Divider(
                color: Color(0xFF4E4E4E),
              ),
              SizedBox(
                height: 20,
              ),
              BodyMeasurements()
            ],
          ),
        ),
      ),
    );
  }
}
