import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%207/TabBar/tabbar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabbarScreen(),
    );
  }
}