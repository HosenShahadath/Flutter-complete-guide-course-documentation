import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2010/post%20data/post_data_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostDataApp(),
    );
  }
}
