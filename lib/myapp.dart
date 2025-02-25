import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/Online%20Json.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnlineJson(),
    );
  }
}
