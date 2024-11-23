import 'package:flutter/material.dart';

class MobileLayour extends StatelessWidget {
  const MobileLayour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFFFFCF8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E6E6)),
          borderRadius: BorderRadius.circular(40),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 90,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
