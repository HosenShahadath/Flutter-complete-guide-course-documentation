import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section1/stack/stack%203.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack3(),
    );
  }
}
