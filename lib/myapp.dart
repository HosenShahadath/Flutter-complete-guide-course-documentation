import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section2/gridview%20builder%202.dart';
import 'package:flutter_framework_practice/section2/gridview%20builder.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridviewBuilder2(),
    );
  }
}
