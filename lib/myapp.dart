import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%205/outlined%20button/outlined%20button.dart';
import 'package:flutter_framework_practice/section%205/text%20button/text%20button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextsButton(),
    );
  }
}
