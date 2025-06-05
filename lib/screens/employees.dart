import 'package:flutter/material.dart';

class Employees extends StatelessWidget {
  const Employees({super.key});

  @override
  Widget build(BuildContext context) {
    final employees = [
      {
        'name': 'Aarav Mehta',
        'role': 'Software Engineer',
        'email': 'aarav.mehta@example.com',
        'phone': '9876543210',
        'joinDate': '01-Jan-2022',
        'department': 'Engineering',
        'status': 'Active',
      },
      {
        'name': 'Neha Sharma',
        'role': 'UI/UX Designer',
        'email': 'neha.sharma@example.com',
        'phone': '9123456780',
        'joinDate': '15-Feb-2021',
        'department': 'Design',
        'status': 'Active',
      },
      {
        'name': 'Rohan Verma',
        'role': 'Marketing Manager',
        'email': 'rohan.verma@example.com',
        'phone': '9988776655',
        'joinDate': '20-Mar-2020',
        'department': 'Marketing',
        'status': 'On Leave',
      },
      {
        'name': 'Priya Iyer',
        'role': 'HR Executive',
        'email': 'priya.iyer@example.com',
        'phone': '9090909090',
        'joinDate': '10-Apr-2019',
        'department': 'HR',
        'status': 'Active',
      },
      {
        'name': 'Karan Patel',
        'role': 'Frontend Developer',
        'email': 'karan.patel@example.com',
        'phone': '8888777766',
        'joinDate': '05-May-2023',
        'department': 'Engineering',
        'status': 'Probation',
      },
      {
        'name': 'Divya Nair',
        'role': 'Backend Developer',
        'email': 'divya.nair@example.com',
        'phone': '9812345678',
        'joinDate': '12-Jun-2022',
        'department': 'Engineering',
        'status': 'Active',
      },
      {
        'name': 'Siddharth Rao',
        'role': 'Data Analyst',
        'email': 'siddharth.rao@example.com',
        'phone': '9876123456',
        'joinDate': '07-Jul-2021',
        'department': 'Analytics',
        'status': 'Active',
      },
      {
        'name': 'Anjali Kumari',
        'role': 'Recruiter',
        'email': 'anjali.k@example.com',
        'phone': '9876501234',
        'joinDate': '08-Aug-2020',
        'department': 'HR',
        'status': 'Active',
      },
      {
        'name': 'Vikram Das',
        'role': 'Product Manager',
        'email': 'vikram.das@example.com',
        'phone': '9977556677',
        'joinDate': '09-Sep-2019',
        'department': 'Product',
        'status': 'Active',
      },
      {
        'name': 'Meena Joshi',
        'role': 'QA Engineer',
        'email': 'meena.j@example.com',
        'phone': '9123451234',
        'joinDate': '10-Oct-2022',
        'department': 'QA',
        'status': 'Active',
      },
      {
        'name': 'Rajeev Kumar',
        'role': 'DevOps Engineer',
        'email': 'rajeev.k@example.com',
        'phone': '9988776655',
        'joinDate': '11-Nov-2021',
        'department': 'Infrastructure',
        'status': 'Active',
      },
      {
        'name': 'Sneha Agarwal',
        'role': 'Technical Writer',
        'email': 'sneha.a@example.com',
        'phone': '9345678912',
        'joinDate': '12-Dec-2020',
        'department': 'Documentation',
        'status': 'Active',
      },
      {
        'name': 'Manish Kapoor',
        'role': 'Team Lead',
        'email': 'manish.k@example.com',
        'phone': '9999888877',
        'joinDate': '13-Jan-2018',
        'department': 'Engineering',
        'status': 'On Leave',
      },
      {
        'name': 'Isha Rani',
        'role': 'Customer Support',
        'email': 'isha.rani@example.com',
        'phone': '9988123456',
        'joinDate': '14-Feb-2022',
        'department': 'Support',
        'status': 'Active',
      },
      {
        'name': 'Tarun Bhatt',
        'role': 'Database Admin',
        'email': 'tarun.b@example.com',
        'phone': '9321654987',
        'joinDate': '15-Mar-2019',
        'department': 'IT',
        'status': 'Active',
      },
      {
        'name': 'Rekha Menon',
        'role': 'Finance Manager',
        'email': 'rekha.m@example.com',
        'phone': '9811122233',
        'joinDate': '16-Apr-2021',
        'department': 'Finance',
        'status': 'Active',
      },
      {
        'name': 'Amitabh Roy',
        'role': 'Security Analyst',
        'email': 'amitabh.roy@example.com',
        'phone': '9001122334',
        'joinDate': '17-May-2020',
        'department': 'Security',
        'status': 'Active',
      },
      {
        'name': 'Preeti Saxena',
        'role': 'Legal Advisor',
        'email': 'preeti.s@example.com',
        'phone': '9033211122',
        'joinDate': '18-Jun-2018',
        'department': 'Legal',
        'status': 'Active',
      },
      {
        'name': 'Ankur Malhotra',
        'role': 'Business Analyst',
        'email': 'ankur.m@example.com',
        'phone': '9111223344',
        'joinDate': '19-Jul-2023',
        'department': 'Strategy',
        'status': 'Probation',
      },
      {
        'name': 'Sanya Singh',
        'role': 'Content Creator',
        'email': 'sanya.s@example.com',
        'phone': '9876543212',
        'joinDate': '20-Aug-2022',
        'department': 'Marketing',
        'status': 'Active',
      },
      {
        'name': 'Dev Joshi',
        'role': 'Sales Executive',
        'email': 'dev.j@example.com',
        'phone': '9812348765',
        'joinDate': '21-Sep-2022',
        'department': 'Sales',
        'status': 'Active',
      },
      {
        'name': 'Ritika Kapoor',
        'role': 'Graphic Designer',
        'email': 'ritika.k@example.com',
        'phone': '9654321789',
        'joinDate': '22-Oct-2021',
        'department': 'Design',
        'status': 'Active',
      },
      {
        'name': 'Nikhil Chawla',
        'role': 'Cloud Architect',
        'email': 'nikhil.c@example.com',
        'phone': '9678901234',
        'joinDate': '23-Nov-2020',
        'department': 'Infrastructure',
        'status': 'Active',
      },
      {
        'name': 'Pooja Yadav',
        'role': 'Payroll Officer',
        'email': 'pooja.y@example.com',
        'phone': '9234567890',
        'joinDate': '24-Dec-2021',
        'department': 'Finance',
        'status': 'Active',
      },
      {
        'name': 'Ashok Rathi',
        'role': 'Operations Head',
        'email': 'ashok.r@example.com',
        'phone': '9012345678',
        'joinDate': '25-Jan-2017',
        'department': 'Operations',
        'status': 'Active',
      },
    ];

    final columnHeaders = [
      'Name',
      'Role',
      'Email',
      'Phone',
      'Joining Date',
      'Department',
      'Status'
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Employees"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: columnHeaders
                    .map((header) => Expanded(
                  flex: 1,
                  child: Text(
                    header,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  final emp = employees[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 8),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.black12,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(child: Text(emp['name']!)),
                        Expanded(child: Text(emp['role']!)),
                        Expanded(child: Text(emp['email']!)),
                        Expanded(child: Text(emp['phone']!)),
                        Expanded(child: Text(emp['joinDate']!)),
                        Expanded(child: Text(emp['department']!)),
                        Expanded(
                          child: Text(
                            emp['status']!,
                            style: TextStyle(
                              color: emp['status'] == 'Active'
                                  ? Colors.green
                                  : (emp['status'] == 'On Leave'
                                  ? Colors.orange
                                  : Colors.blueGrey),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
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
