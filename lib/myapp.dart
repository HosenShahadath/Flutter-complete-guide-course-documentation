import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%204/bottom%20navigation%20bar/bottom%20nav.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
