import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate random attendance percentage for 12 months
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    final random = Random();
    final attendanceData = {
      for (var month in months) month: random.nextInt(31) + 70 // 70%–100%
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Monthly Attendance Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: LineChart(
                LineChartData(
                  borderData: FlBorderData(show: true),
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 10,
                        getTitlesWidget: (value, meta) =>
                            Text('${value.toInt()}%'),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          if (value >= 0 && value < months.length) {
                            return Text(months[value.toInt()].substring(0, 3));
                          }
                          return const Text('');
                        },
                      ),
                    ),
                  ),
                  minY: 60,
                  maxY: 100,
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      color: Colors.deepPurple,
                      barWidth: 3,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.deepPurple.withOpacity(0.2),
                      ),
                      spots: [
                        for (int i = 0; i < months.length; i++)
                          FlSpot(i.toDouble(), attendanceData[months[i]]!.toDouble())
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: months.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final month = months[index];
                  final value = attendanceData[month]!;
                  return ListTile(
                    leading: Text(
                      month,
                      style: const TextStyle(fontSize: 16),
                    ),
                    title: LinearProgressIndicator(
                      value: value / 100,
                      color: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple.withOpacity(0.1),
                      minHeight: 10,
                    ),
                    trailing: Text('$value%'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
