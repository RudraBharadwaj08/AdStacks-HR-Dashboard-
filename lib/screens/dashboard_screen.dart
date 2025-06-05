import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/top_bar.dart';
import '../widgets/project_card.dart';
import '../widgets/top_creators.dart';
import '../widgets/performance_chart.dart';
import '../widgets/birthday_card.dart';
import '../widgets/anniversary_card.dart';
import '../widgets/calender_cart.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar (takes 1/5th of screen)
          Expanded(
            flex: 2,
            child: Sidebar(currentRoute: '',),
          ),

          // Main Dashboard Content
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Section (Search bar, icons) — coming next
                  TopBar(),

                  const SizedBox(height: 20),

                  // Body content row
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left and Middle Panel
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const ProjectCard(),
                              const SizedBox(height: 20),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: const ProjectList(),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: const TopCreators(),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const PerformanceChart(),
                            ],
                          ),
                        ),

                        const SizedBox(width: 20),

                        // Right Panel
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              const CalendarCard(),
                              const SizedBox(height: 20),
                              const BirthdayCard(),

                              const SizedBox(height: 20),
                              const AnniversaryCard(),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
