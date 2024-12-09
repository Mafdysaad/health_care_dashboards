import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

import 'package:healthcare_dashborad/widgets/desktop/widget/rigth_section/widget/gauges.dart';

class Higthandwigth extends StatefulWidget {
  const Higthandwigth(
      {super.key,
      required this.color,
      required this.title,
      required this.amount,
      required this.unit});
  final Color color;
  final String title, amount, unit;

  @override
  State<Higthandwigth> createState() => _HigthandwigthState();
}

class _HigthandwigthState extends State<Higthandwigth> {
  int currentIndex = 1;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      final double offset = controller.offset;
      final int calculatedIndex = (offset / 10).round();

      setState(() {
        if (calculatedIndex <= 200) {
          currentIndex = calculatedIndex;
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20, top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 42 - 16,
                    ),
                    Text(
                      widget.title,
                      style: Fontstyle.mulish_regular16(context),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gauges(
                      currentIndex: currentIndex,
                      controller: controller,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${currentIndex} ${widget.unit}',
                      style: Fontstyle.mulish_regular16(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ));
  }
}
