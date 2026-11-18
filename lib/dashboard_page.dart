import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  const DashboardPage({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Icon(
            Icons.dashboard,
            size: 80,
            color: Colors.black87,
          ),
          const SizedBox(height: 16),

          Text(
            'Welcome, $username!',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),

          const Text(
            'Explore your student application using '
            'the navigation bar below.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 24),

          const Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.calculate, color: Colors.black87),
                  title: Text(
                    'Calculator',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Perform basic arithmetic operations.',
                  ),
                ),
                Divider(height: 1),

                ListTile(
                  leading: Icon(Icons.people, color: Colors.black87),
                  title: Text(
                    'Social',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Create posts, like posts, and add comments.',
                  ),
                ),
                Divider(height: 1),

                ListTile(
                  leading: Icon(Icons.person, color: Colors.black87),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'View student information and log out.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
