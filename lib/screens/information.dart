import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final infoSections = [
      {
        'title': 'Company Overview',
        'content':
        'We are a leading tech company specializing in software development, digital transformation, and cloud services.'
      },
      {
        'title': 'Mission',
        'content':
        'To empower businesses through innovative technology solutions.'
      },
      {
        'title': 'Vision',
        'content':
        'To be the most trusted partner in the digital era, delivering outstanding value through innovation.'
      },
      {
        'title': 'Core Values',
        'content':
        '• Integrity\n• Innovation\n• Customer Centricity\n• Excellence\n• Collaboration'
      },
      {
        'title': 'Leadership',
        'content':
        'Our leadership team includes seasoned professionals with backgrounds in AI, cloud infrastructure, and digital strategy.'
      },
      {
        'title': 'Technologies We Use',
        'content':
        'We work with Flutter, React, Node.js, AWS, Firebase, Docker, and more to build modern and scalable applications.'
      },
      {
        'title': 'Careers',
        'content':
        'We are hiring! Join our team of innovators and help shape the future of technology. Visit careers.company.com.'
      },
      {
        'title': 'Contact Us',
        'content':
        'Email: contact@company.com\nPhone: +123 456 7890\nAddress: 123 Tech Avenue, Innovation City'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Information'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: infoSections.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final section = infoSections[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    section['title']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    section['content']!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
