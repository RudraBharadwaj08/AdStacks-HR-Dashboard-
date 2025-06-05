import 'package:flutter/material.dart';

class WorkspacesScreen extends StatelessWidget {
  const WorkspacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workspaces = [
      {
        'name': 'Design Studio',
        'description': 'Creative workspace for the UI/UX and branding team.',
        'icon': Icons.brush,
      },
      {
        'name': 'Development Hub',
        'description': 'Dedicated space for developers and engineers.',
        'icon': Icons.code,
      },
      {
        'name': 'Marketing Pod',
        'description': 'Campaign planning, strategy, and outreach zone.',
        'icon': Icons.campaign,
      },
      {
        'name': 'Remote Zone',
        'description': 'Flexible area for remote workers and video calls.',
        'icon': Icons.wifi,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Workspaces'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: workspaces.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final workspace = workspaces[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple.shade100,
                child: Icon(workspace['icon'] as IconData, color: Colors.deepPurple),
              ),
              title: Text(
                workspace['name']! as String,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(workspace['description']! as String),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle navigation or workspace actions here
              },
            ),
          );

        },
      ),
    );
  }
}
