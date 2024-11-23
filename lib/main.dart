import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/pages/homepage.dart';

void main() {
  runApp(const Halthcare());
}

class Halthcare extends StatelessWidget {
  const Halthcare({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
