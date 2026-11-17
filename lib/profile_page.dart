import 'package:flutter/material.dart';
import 'demo_auth.dart';
import 'login_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void _logout(BuildContext context) {
    DemoAuth.logout();

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () => _logout(context),
          ),
        ],
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
          const SizedBox(height: 24),
          OutlinedButton.icon(
            onPressed: () => _logout(context),
            icon: const Icon(Icons.logout, color: Colors.black87),
            label: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              side: const BorderSide(color: Colors.black87, width: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
