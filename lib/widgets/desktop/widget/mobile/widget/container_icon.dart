import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({super.key, required this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E6E6)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x05000000),
            blurRadius: 50,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
  }
}
