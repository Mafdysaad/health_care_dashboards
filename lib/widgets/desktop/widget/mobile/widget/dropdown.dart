import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Custom_Dropdownmenue extends StatelessWidget {
  const Custom_Dropdownmenue(
      {super.key,
      required this.title,
      required this.bordercolor,
      this.titlecolor});
  final String title;
  final Color bordercolor;
  final Color? titlecolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: bordercolor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Fontstyle.mulish_regular16(context)
                .copyWith(color: titlecolor ?? const Color(0xFF383838)),
          ),
          const SizedBox(
            width: 10,
          ),
          Transform.rotate(
              angle: -1.5708,
              child: Icon(
                Icons.arrow_back_ios,
                color: titlecolor ?? const Color(0xFF383838),
                size: 15,
              ))
        ],
      ),
    );
  }
}
