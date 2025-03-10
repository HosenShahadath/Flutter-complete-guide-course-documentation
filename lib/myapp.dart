import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%204/drawer/drawer%201.dart';
import 'package:flutter_framework_practice/section3/qoute%20app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Drawer1(),
    );
  }
}
