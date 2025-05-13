import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2010/fetch%20data/get_data_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetDataApp(),
    );
  }
}