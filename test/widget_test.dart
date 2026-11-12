import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rosales_navigation_app/main.dart';
import 'package:rosales_navigation_app/login_screen.dart';

void main() {
  testWidgets('App renders LoginScreen on launch', (WidgetTester tester) async {
    await tester.pumpWidget(const StudentApp());

    expect(find.byType(LoginScreen), findsOneWidget);
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
