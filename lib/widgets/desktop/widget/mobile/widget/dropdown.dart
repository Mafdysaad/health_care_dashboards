import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Dropdownmenue extends StatelessWidget {
  const Dropdownmenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE1E1E1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Jan 2021',
            style: Fontstyle.mulish_regular16,
          ),
          const SizedBox(
            width: 10,
          ),
          Transform.rotate(
              angle: -1.5708,
              child: const Icon(
                Icons.arrow_back_ios,
                size: 15,
              ))
        ],
      ),
    );
  }
}
