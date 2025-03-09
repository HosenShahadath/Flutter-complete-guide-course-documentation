import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/internet%20image.dart';
import 'package:flutter_framework_practice/section3/local%20image.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InternetImage(),
    );
  }
}
