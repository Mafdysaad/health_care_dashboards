import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class DraggableContainer extends StatefulWidget {
  const DraggableContainer(
      {super.key, required this.width, required this.item});
  final double width;
  final List<String> item;

  @override
  State<DraggableContainer> createState() => _DraggableContainerState();
}

class _DraggableContainerState extends State<DraggableContainer> {
  late double postion = widget.width / 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
                top: 0,
                left: postion.clamp(0, widget.width),
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      postion += details.delta.dx;
                    });
                  },
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD16564),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 14,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0xFFB4D4F1),
                        Color(0xFF81E5DA),
                        Color(0xFFE7D284),
                        Color(0xFFE2788E)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(widget.item.length, (index) {
            return Text(
              widget.item[index],
              style: Fontstyle.mulish_boled12(context)
                  .copyWith(color: Colors.white),
            );
          }),
        )
      ],
    );
  }
}
