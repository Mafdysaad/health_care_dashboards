import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_dashborad/model/body_measument.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Detailes extends StatelessWidget {
  const Detailes({
    super.key,
    required this.list,
  });

  final List<BodyMeasument_model> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(list.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFC4C4C4)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    list[index].title,
                    style: Fontstyle.mulish_boled16(context),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: FittedBox(
                        child: Text('${list[index].value}',
                            style: Fontstyle.mulish_regular24(context)
                                .copyWith(color: Colors.black)),
                      ),
                    ),
                    const Flexible(
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    Transform.rotate(
                        angle:
                            list[index].color == Colors.red ? 1.5708 : -1.5708,
                        child: Icon(
                          size: MediaQuery.of(context).size.width < 800
                              ? 20
                              : null,
                          Icons.arrow_back,
                          color: list[index].color,
                        )),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
