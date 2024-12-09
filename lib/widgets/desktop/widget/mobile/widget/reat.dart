import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Reat extends StatelessWidget {
  const Reat({
    super.key,
    required this.color,
    required this.text,
  });
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          )),
      child: Text(
        'Normal',
        style: Fontstyle.mulish_semiboled12(context),
      ),
    );
  }
}
