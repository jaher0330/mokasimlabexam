import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              debugPrint('Logout clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/student.jpg'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mokasim John Jaher',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('ID: 555-252', style: TextStyle(fontSize: 13)),
                    Text('BSIT 3RD YEAR', style: TextStyle(fontSize: 13)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Student Information Card
            Card(
              elevation: 3,
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Mokasim@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('+63 912 345 6789'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('123 Matina,Davao City, Philippines'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Subjects
            const Text(
              'Subjects',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _subjectCard(
              'Mobile App Development',
              'Mr. Velez',
              'Mon/Wed 10:00 - 11:30 AM',
            ),
            _subjectCard(
              'Database Systems',
              'Mrs. Garcia',
              'Tue/Thu 1:00 - 2:30 PM',
            ),
            _subjectCard(
              'Operating Systems',
              'Dr. Lee',
              'Fri 8:00 - 11:00 AM',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    print('Add Subject Clicked!');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add Subject Clicked!')),
    );
  },
  child: const Icon(Icons.add),
),
    );
  }

  Widget _subjectCard(String name, String instructor, String schedule) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 4),
            Text('Instructor: $instructor',
                style: const TextStyle(fontSize: 12)),
            Text('Schedule: $schedule', style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}