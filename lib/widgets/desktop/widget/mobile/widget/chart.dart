import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:healthcare_dashborad/utils/fontstyle.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2, child: BarChart(getdata()));
  }
}

BarChartData getdata() {
  List<Map> Data = [
    {
      '1': {'fromY': 0, 'toY': 25},
      '2': {'fromY': 26, 'toY': 55},
      '3': {'fromY': 56, 'toY': 70}
    },
    {
      '1': {'fromY': 0, 'toY': 16},
      '2': {'fromY': 17, 'toY': 63},
      '3': {'fromY': 64, 'toY': 78}
    },
    {
      '1': {'fromY': 0, 'toY': 43},
      '2': {'fromY': 44, 'toY': 49},
      '3': {'fromY': 50, 'toY': 56}
    },
    {
      '1': {'fromY': 0, 'toY': 35},
      '2': {'fromY': 36, 'toY': 50},
      '3': {'fromY': 51, 'toY': 55}
    },
    {
      '1': {'fromY': 0, 'toY': 20},
      '2': {'fromY': 21, 'toY': 38},
      '3': {'fromY': 39, 'toY': 63}
    },
    {
      '1': {'fromY': 0, 'toY': 23},
      '2': {'fromY': 24, 'toY': 44},
      '3': {'fromY': 45, 'toY': 49}
    },
    {
      '1': {'fromY': 0, 'toY': 45},
      '2': {'fromY': 46, 'toY': 65},
      '3': {'fromY': 66, 'toY': 76}
    },
    {
      '1': {'fromY': 0, 'toY': 25},
      '2': {'fromY': 26, 'toY': 56},
      '3': {'fromY': 57, 'toY': 65}
    },
    {
      '1': {'fromY': 0, 'toY': 18},
      '2': {'fromY': 19, 'toY': 35},
      '3': {'fromY': 36, 'toY': 70}
    },
    {
      '1': {'fromY': 0, 'toY': 19},
      '2': {'fromY': 20, 'toY': 32},
      '3': {'fromY': 33, 'toY': 60}
    },
    {
      '1': {'fromY': 0, 'toY': 20},
      '2': {'fromY': 21, 'toY': 32},
      '3': {'fromY': 33, 'toY': 46}
    },
    {
      '1': {'fromY': 0, 'toY': 35},
      '2': {'fromY': 36, 'toY': 45},
      '3': {'fromY': 46, 'toY': 58}
    },
    {
      '1': {'fromY': 0, 'toY': 20},
      '2': {'fromY': 21, 'toY': 50},
      '3': {'fromY': 51, 'toY': 77}
    },
    {
      '1': {'fromY': 0, 'toY': 37},
      '2': {'fromY': 38, 'toY': 48},
      '3': {'fromY': 49, 'toY': 75}
    },
    {
      '1': {'fromY': 0, 'toY': 36},
      '2': {'fromY': 38, 'toY': 46},
      '3': {'fromY': 48, 'toY': 72}
    },
    {
      '1': {'fromY': 0, 'toY': 45},
      '2': {'fromY': 46, 'toY': 65},
      '3': {'fromY': 66, 'toY': 71}
    },
    {
      '1': {'fromY': 0, 'toY': 25},
      '2': {'fromY': 26, 'toY': 38},
      '3': {'fromY': 41, 'toY': 45}
    },
    {
      '1': {'fromY': 0, 'toY': 36},
      '2': {'fromY': 37, 'toY': 60},
      '3': {'fromY': 63, 'toY': 73}
    },
  ];
  return BarChartData(
      //******** intern position of element *******//
      maxY: 100,
      alignment: BarChartAlignment.center,
      groupsSpace: 26,
      //******** Elements *******//
      barGroups: List.generate(18, (index) {
        return BarChartGroupData(x: index, groupVertically: true, barRods: [
          BarChartRodData(
              fromY: 0,
              toY: Data[index]['1']['toY'],
              width: 8,
              color: const Color(0xFFCA6B6E)),
          BarChartRodData(
            fromY: Data[index]['2']['fromY'],
            toY: Data[index]['2']['toY'],
            width: 8,
            color: const Color(0xFF468E95),
          ),
          BarChartRodData(
            fromY: Data[index]['3']['fromY'],
            toY: Data[index]['3']['toY'],
            width: 8,
            color: const Color(0xFFD08626),
          )
        ]);
      }),

      //******** Chart Formation *******//

      titlesData: FlTitlesData(
          rightTitles: const AxisTitles(
            drawBelowEverything: false,
          ),
          topTitles: const AxisTitles(drawBelowEverything: false),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 20,
                child: switch (value) {
                  0 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 1',
                        style: Fontstyle.mulish_boled10,
                      )),
                  1 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 2',
                        style: Fontstyle.mulish_boled10,
                      )),
                  2 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 3',
                        style: Fontstyle.mulish_boled10,
                      )),
                  3 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 4',
                        style: Fontstyle.mulish_boled10,
                      )),
                  4 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 5',
                        style: Fontstyle.mulish_boled10,
                      )),
                  5 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 6',
                        style: Fontstyle.mulish_boled10,
                      )),
                  6 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 7',
                        style: Fontstyle.mulish_boled10,
                      )),
                  7 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 8',
                        style: Fontstyle.mulish_boled10,
                      )),
                  8 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 9',
                        style: Fontstyle.mulish_boled10,
                      )),
                  9 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 10',
                        style: Fontstyle.mulish_boled10,
                      )),
                  10 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 11',
                        style: Fontstyle.mulish_boled10,
                      )),
                  11 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 12',
                        style: Fontstyle.mulish_boled10,
                      )),
                  12 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 13',
                        style: Fontstyle.mulish_boled10,
                      )),
                  13 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 14',
                        style: Fontstyle.mulish_boled10,
                      )),
                  14 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 15',
                        style: Fontstyle.mulish_boled10,
                      )),
                  15 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 16',
                        style: Fontstyle.mulish_boled10,
                      )),
                  16 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 17',
                        style: Fontstyle.mulish_boled10,
                      )),
                  17 => Transform.rotate(
                      angle: -0.785398,
                      child: Text(
                        'jan 18',
                        style: Fontstyle.mulish_boled10,
                      )),
                  _ => const Text(''),
                },
              );
            },
          )),
          leftTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
            interval: 2,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                space: 10,
                axisSide: meta.axisSide,
                child: switch (value) {
                  20 => Text(
                      '% 20',
                      style: Fontstyle.mulish_boled10,
                    ),
                  40 => Text('% 40', style: Fontstyle.mulish_boled10),
                  60 => Text('% 60', style: Fontstyle.mulish_boled10),
                  80 => Text('% 80', style: Fontstyle.mulish_boled10),
                  _ => const Text(''),
                },
              );
            },
          ))),

      //************************** Grid Data *******************//

      gridData: FlGridData(
        drawVerticalLine: false,
        horizontalInterval: 20,
        getDrawingHorizontalLine: (value) =>
            const FlLine(color: Color(0xFFF2F2F2)),
      ),

      //************************** Border Data *******************//

      borderData: FlBorderData(show: false),
      extraLinesData: const ExtraLinesData(),
      barTouchData: BarTouchData());
}
