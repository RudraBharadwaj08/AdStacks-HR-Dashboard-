import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.folder, size: 36, color: Colors.white),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Active Projects",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "You have 3 active projects.\nLast updated 2 hours ago.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
          ],
        ),
      ),
    );

  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  final List<Map<String, String>> mockProjects = const [
    {
      'title': 'AdStacks Redesign',
      'description': 'Revamp the landing page and dashboard UI.',
      'status': 'In Progress'
    },
    {
      'title': 'Creator Onboarding',
      'description': 'Build guided onboarding experience for new users.',
      'status': 'Completed'
    },
    {
      'title': 'Analytics Module',
      'description': 'Integrate new KPIs into the dashboard.',
      'status': 'Pending'
    },
  ];

  Widget buildStatusBadge(String status) {
    Color bgColor;
    switch (status) {
      case 'In Progress':
        bgColor = Colors.orange.shade700;
        break;
      case 'Completed':
        bgColor = Colors.green.shade700;
        break;
      case 'Pending':
      default:
        bgColor = Colors.grey.shade700;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2C2C2E), // dark grey
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 260,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Projects List',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: mockProjects.length,
                  separatorBuilder: (_, __) =>
                      Divider(height: 20, color: Colors.grey.shade700),
                  itemBuilder: (context, index) {
                    final project = mockProjects[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        project['title']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      subtitle: Text(
                        project['description']!,
                        style: const TextStyle(color: Colors.white70),
                      ),
                      trailing: buildStatusBadge(project['status']!),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
