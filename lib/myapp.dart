import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%207/return%20data%20from%20screen/return_data_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReturnDataScreen(),
    );
  }
}