import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Icon(
            Icons.home,
            size: 80,
            color: Colors.black87,
          ),
          const SizedBox(height: 16),
          const Text(
            'Welcome, Student!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Use the navigation bar below to explore the app.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: const [
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
                  leading: Icon(Icons.person, color: Colors.black87),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'View your student information.',
                  ),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.black87),
                  title: Text(
                    'Social Media',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'View your sample social accounts.',
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
