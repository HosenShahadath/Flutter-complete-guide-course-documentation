import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2010/put%20data/put_data_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PutDataApp(),
    );
  }
}
