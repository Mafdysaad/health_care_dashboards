import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/model/exercises.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/chart.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/exercises_container.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/header_chart.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Exercises> list = [
      const Exercises(color: Color(0xFFCA6B6E), title: 'Aerobics'),
      const Exercises(color: Color(0xFF468E95), title: 'Yoga'),
      const Exercises(color: Color(0xFFD08626), title: 'Meditation'),
    ];
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE7E6E6)),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 50,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
          child: Column(
            children: [
              const Expanded(child: HeaderChart()),
              const SizedBox(
                height: 26,
              ),
              const Expanded(flex: 3, child: Chart()),
              const SizedBox(
                height: 26,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(list.length, (index) {
                    return ExercisesContainers(exercises: list[index]);
                  }))
            ],
          ),
        ));
  }
}
