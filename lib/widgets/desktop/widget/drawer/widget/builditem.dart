import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Builditems extends StatefulWidget {
  const Builditems({
    super.key,
    required this.Icon,
    required this.isActive,
  });

  final String Icon;
  final bool isActive;

  @override
  State<Builditems> createState() => _BuilditemsState();
}

class _BuilditemsState extends State<Builditems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: widget.isActive ? const Color(0xFF2F2F2F) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
          child: SvgPicture.asset(
        widget.Icon,
        height: 30,
        width: 30,
        fit: BoxFit.scaleDown,
        colorFilter: widget.isActive
            ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
            : null,
      )),
    );
  }
}
