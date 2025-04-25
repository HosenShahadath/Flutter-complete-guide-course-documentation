import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section1/counter%20app/counter_app_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp3(),
    );
  }
}
