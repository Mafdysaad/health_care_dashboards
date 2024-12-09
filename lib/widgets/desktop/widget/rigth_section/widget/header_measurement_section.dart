import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Headersection extends StatelessWidget {
  const Headersection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'Body Measurements',
            style: Fontstyle.mulish_regular22(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        FittedBox(
          child: Text(
            'Last checked 2 Days Ago',
            style:
                Fontstyle.mulish_boled16(context).copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: const Color(0xFF5D5D5D),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: FittedBox(
            child: Text(
              'Inverted Triangle Body Shape',
              style: Fontstyle.mulish_regular14(context),
            ),
          ),
        )
      ],
    );
  }
}
