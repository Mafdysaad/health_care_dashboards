import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: const Color(0xFFFBF0F3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: Fontstyle.mulish_semiboled16,
        ),
      ],
    );
  }
}
