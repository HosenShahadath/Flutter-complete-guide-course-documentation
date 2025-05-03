import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%207/pass%20data%20to%20other%20screen/greet_user.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GreetUser(),
    );
  }
}
