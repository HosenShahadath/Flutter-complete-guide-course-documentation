import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/local%20json.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalJson(),
    );
  }
}
