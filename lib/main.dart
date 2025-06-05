import 'package:flutter/material.dart';
import 'package:ad_stacks/screens/dashboard_screen.dart';
import 'package:ad_stacks/screens/employees.dart';
import 'package:ad_stacks/screens/attendance.dart';
import 'package:ad_stacks/screens/summary.dart';
import 'package:ad_stacks/screens/information.dart';
import 'package:ad_stacks/screens/workspaces.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdStacks Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFDDE2FF), // Soft light lavender-blue
        fontFamily: 'Poppins',
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        brightness: Brightness.light,
      ),

      initialRoute: '/dashboard',
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/employees': (context) => Employees(),
        '/attendance': (context) => AttendanceScreen(),
        '/summary': (context) => SummaryScreen(),
        '/information': (context) => InformationScreen(),
        '/workspaces': (context) => WorkspacesScreen(),
      },
    );
  }
}
