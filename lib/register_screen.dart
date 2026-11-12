import 'package:flutter/material.dart';
import 'demo_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  void register() {
    if (!formKey.currentState!.validate()) return;
    DemoAuth.register(
      usernameController.text.trim(),
      passwordController.text,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Registration successful! You can now log in.'),
        backgroundColor: Colors.black87,
      ),
    );
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              const Icon(Icons.person_add, size: 80, color: Colors.black87),
              const SizedBox(height: 16),
              const Text(
                'Create an Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person, color: Colors.black87),
                ),
                validator: (value) {
                  final username = value?.trim() ?? '';
                  if (username.length < 3) return 'Use at least 3 characters.';
                  if (username.toLowerCase() == 'admin') {
                    return 'This username is reserved.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Colors.black87),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Enter a password.';
                  }
                  if (value.length < 6) return 'Use at least 6 characters.';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: confirmController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.black87),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirm your password.';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords do not match.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: register,
                child: const Text('Register'),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
