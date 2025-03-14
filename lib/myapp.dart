import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%206/checkbox/checkbox.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckBoxApp(),
    );
  }
}
