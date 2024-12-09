import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/pages/homepage.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const Halthcare(),
  ));
}

class Halthcare extends StatelessWidget {
  const Halthcare({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
