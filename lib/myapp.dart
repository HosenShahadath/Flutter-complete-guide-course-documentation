import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%206/checkbox/checkbox%204.dart';
import 'package:flutter_framework_practice/section%206/radio%20button/radio%20button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadioButtonApp(),
    );
  }
}
