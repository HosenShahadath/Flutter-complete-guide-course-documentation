import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%205/Popup%20menu/popup%20menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopUpMenu(),
    );
  }
}
