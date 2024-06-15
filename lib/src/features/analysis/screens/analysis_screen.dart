import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:focus_next/src/features/calendar/screens/calendar_screen.dart';

import '../../../common/widgets/see_all_section.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
  List<Color> gradientColors = [
    const Color(0xFF50E4FF),
    const Color(0xFF2196F3),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        const AppBarSection(title: 'Your Analysis'),
        const SizedBox(height: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SeeAllSection(
                    sectionHeading: 'Daily',
                    endButton: false,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(right: 16),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LineChart(mainData()),
                  ),
                  const SizedBox(height: 48),
                  const SeeAllSection(
                    sectionHeading: 'Weekly',
                    endButton: false,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LineChart(mainData()),
                  ),
                  const SizedBox(height: 48),
                  const SeeAllSection(
                    sectionHeading: 'Monthly',
                    endButton: false,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LineChart(mainData()),
                  ),
                  const SizedBox(height: 48),
                  const SeeAllSection(
                    sectionHeading: 'Yearly',
                    endButton: false,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LineChart(mainData()),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('SAT', style: style);
        break;
      case 1:
        text = const Text('SUN', style: style);
        break;
      case 2:
        text = const Text('MON', style: style);
        break;
      case 3:
        text = const Text('TUE', style: style);
        break;
      case 4:
        text = const Text('WED', style: style);
        break;
      case 5:
        text = const Text('THR', style: style);
        break;

      default:
        text = const Text('FRY', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0%';
        break;
      case 2:
        text = '20%';
        break;
      case 4:
        text = '40%';
        break;
      case 6:
        text = '60%';
        break;
      case 8:
        text = '80%';
        break;
      case 10:
        text = '100%';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 11,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            //sat
            FlSpot(0, 3),
            //sun
            FlSpot(1, 2),
            //mon
            FlSpot(2, 5),
            //tue
            FlSpot(3, 3.1),
            //wed
            FlSpot(4, 9),
            //thr
            FlSpot(5, 3),
            //fry
            FlSpot(6, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
