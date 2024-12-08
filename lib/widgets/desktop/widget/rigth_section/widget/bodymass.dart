import 'package:flutter/material.dart';

import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/draggable%20_container.dart';

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
                  style:
                      Fontstyle.mulish_regular16.copyWith(color: Colors.white),
                ),
              ]),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Text(
                    '24.9',
                    style: Fontstyle.mulish_regular24,
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD5FFDD),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(
                        'You’re Healthy',
                        style: Fontstyle.mulish_boled12,
                      )),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              DraggableContainer(
                width: constraints.maxWidth - 50,
                item: valuse,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(valuse.length, (index) {
                  return Text(
                    valuse[index],
                    style:
                        Fontstyle.mulish_boled12.copyWith(color: Colors.white),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
