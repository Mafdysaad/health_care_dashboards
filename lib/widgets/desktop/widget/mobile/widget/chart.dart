import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(getdata());
  }
}

BarChartData getdata() {
  return BarChartData(
barGroups: [BarChartGroupData(x: 4)]
  );
}
