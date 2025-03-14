import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%206/text%20form%20field/text%20form%20field.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFormFieldExample(),
    );
  }
}
