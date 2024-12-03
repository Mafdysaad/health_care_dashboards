import 'package:flutter/material.dart';

class Gauges extends StatelessWidget {
  Gauges({super.key, required this.currentIndex, required this.controller});
  final ScrollController controller;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Stack(children: [
        SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(200, ((index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 2,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: const Color(0xB2282828),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              );
            })),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
              width: 4,
              height: 22,
              decoration: ShapeDecoration(
                color: const Color(0xFFD16564),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              )),
        )
      ]),
    );
  }
}
