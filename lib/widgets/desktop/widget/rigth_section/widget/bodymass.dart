import 'package:flutter/material.dart';

import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/draggable%20_container.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/header_mass.dart';

class Bodymass extends StatelessWidget {
  const Bodymass({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> valuse = ['15', '18,5', '25', '30', '40'];
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF4A4949),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 17, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Text(
                  'Body Mass Index (BMI)',
                  style: Fontstyle.mulish_regular16(context)
                      .copyWith(color: Colors.white),
                ),
              ]),
              const SizedBox(
                height: 22,
              ),
              const header_bodymass(),
              const SizedBox(
                height: 22,
              ),
              DraggableContainer(
                width: constraints.maxWidth - 50,
                item: valuse,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
