import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class header_bodymass extends StatelessWidget {
  const header_bodymass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '24.9',
          style: Fontstyle.mulish_regular24(context),
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: ShapeDecoration(
              color: const Color(0xFFD5FFDD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(
              'You’re Healthy',
              style: Fontstyle.mulish_boled12(context),
            )),
      ],
    );
  }
}
