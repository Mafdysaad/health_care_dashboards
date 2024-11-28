import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/model/exercises.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';

class ExercisesContainers extends StatelessWidget {
  const ExercisesContainers({super.key, required this.exercises});
  final Exercises exercises;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 10,
        height: 10,
        decoration: ShapeDecoration(
          color: exercises.color,
          shape: const OvalBorder(),
        ),
      ),
      const SizedBox(
        width: 11,
      ),
      Text(
        exercises.title,
        style: Fontstyle.mulish_semiboled12.copyWith(
          color: const Color(0xFF383838),
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(
        width: 21,
      )
    ]);
  }
}
