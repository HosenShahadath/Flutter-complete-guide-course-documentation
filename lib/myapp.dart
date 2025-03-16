import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%207/move%20to%20another%20screen/movo%20to%20screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
