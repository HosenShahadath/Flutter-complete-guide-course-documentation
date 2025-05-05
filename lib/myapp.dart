import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%209/shared_preferences_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SharedPreferencesScreen(),
    );
  }
}