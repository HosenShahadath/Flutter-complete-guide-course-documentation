import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%205/material%20button/material_button_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialButtonScreen(),
    );
  }
}
