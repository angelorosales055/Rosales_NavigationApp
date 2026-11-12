import 'package:flutter/material.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  void showAccount(BuildContext context, String account) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected account: $account'),
        backgroundColor: Colors.black87,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Connect With Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Tap an account to display its username.',
            style: TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.facebook,
                color: Colors.black87,
                size: 28,
              ),
              title: const Text(
                'Facebook',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('Angelo Rosales'),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () => showAccount(
                context,
                'Facebook: Angelo Rosales',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.camera_alt,
                color: Colors.black87,
                size: 28,
              ),
              title: const Text(
                'Instagram',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('@gelo.rosales'),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () => showAccount(
                context,
                'Instagram: @gelo.rosales',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.play_circle,
                color: Colors.black87,
                size: 28,
              ),
              title: const Text(
                'YouTube',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: const Text('@AngeloRosales'),
              trailing: const Icon(Icons.chevron_right, color: Colors.black54),
              onTap: () => showAccount(
                context,
                'YouTube: @AngeloRosales',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
