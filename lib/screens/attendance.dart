import 'package:flutter/material.dart';
import 'dart:math';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  final List<String> months = const [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];

  final List<String> employeeNames = const [
    'Aarav Sharma', 'Saanvi Verma', 'Vihaan Mehra', 'Anaya Reddy', 'Aditya Joshi',
    'Ishita Nair', 'Kabir Deshmukh', 'Meera Kapoor', 'Aryan Gupta', 'Tara Iyer',
    'Rohan Malhotra', 'Diya Shah', 'Yash Rathore', 'Simran Kaur', 'Arjun Bansal',
    'Nisha Patil', 'Rahul Menon', 'Priya Dixit', 'Devansh Kulkarni', 'Sneha Jain',
    'Neeraj Rathi', 'Kavya Ghosh', 'Ayaan Bhatt', 'Tanvi Acharya', 'Harshita Sethi',
  ];

  List<Map<String, dynamic>> _generateRandomAttendance() {
    final rand = Random();
    return employeeNames.map((name) {
      final Map<String, dynamic> data = {'name': name};
      double total = 0;
      for (var month in months) {
        final percent = 60 + rand.nextInt(41); // 60% to 100%
        data[month] = percent;
        total += percent;
      }
      data['Average'] = (total / months.length).toStringAsFixed(1);
      return data;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final attendanceData = _generateRandomAttendance();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Attendance '),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.deepPurple.shade100),
          columns: [
            const DataColumn(label: Text('Name')),
            ...months.map((m) => DataColumn(label: Text(m))),
            const DataColumn(label: Text('Avg')),
          ],
          rows: attendanceData.map((emp) {
            return DataRow(
              cells: [
                DataCell(Text(emp['name'])),
                ...months.map((m) => DataCell(Text('${emp[m]}%'))),
                DataCell(Text('${emp['Average']}%')),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
