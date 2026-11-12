import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black87,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Angelo Rosales',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Student',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.badge, color: Colors.black87),
                  title: Text(
                    'Student ID',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('555735'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.school, color: Colors.black87),
                  title: Text(
                    'Course and Section',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('BSIT — 3rd Year'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.black87),
                  title: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('a.rosales.555735@umindanao.edu.ph'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
