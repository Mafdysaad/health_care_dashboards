import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Bodymass extends StatelessWidget {
  const Bodymass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: Fontstyle.mulish_regular16.copyWith(color: Colors.white),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
            Container(
              width: 6,
              height: 6,
              decoration: ShapeDecoration(
                color: const Color(0xFFD16564),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
