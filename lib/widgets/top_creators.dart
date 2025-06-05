import 'package:flutter/material.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  final List<Map<String, String>> creators = const [
    {
      'name': 'Ayesha Khan',
      'role': 'UI/UX Designer',
      'image': 'https://tse2.mm.bing.net/th?id=OIP.TqboLCmvgin_Hlyk_ehLcQHaHa&pid=Api&P=0&h=180',
      'projects': '12',
    },
    {
      'name': 'Rahul Mehra',
      'role': 'Flutter Developer',
      'image': 'https://tse3.mm.bing.net/th?id=OIP.5WZMrSzoI1P0lqES3rqQYAHaE7&pid=Api&P=0&h=180',
      'projects': '9',
    },
    {
      'name': 'Neha Patil',
      'role': 'Product Manager',
      'image': 'https://tse1.mm.bing.net/th?id=OIP.bVUZhAWJYxbseQRMkp7y9wHaE7&pid=Api&P=0&h=180',
      'projects': '7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2C2C2E), // dark grey background
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Creators',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white, // white text
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: creators.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final creator = creators[index];
                  return Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(creator['image']!),
                        radius: 22,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              creator['name']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // white text
                              ),
                            ),
                            Text(
                              creator['role']!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white70, // slightly muted text
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade400, // deeper purple
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${creator['projects']} projects',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white, // readable against purple
                          ),
                        ),
                      )
                    ],
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
