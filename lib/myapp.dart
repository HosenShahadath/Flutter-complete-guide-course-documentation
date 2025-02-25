import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/cached%20image.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CachedImage(),
    );
  }
}
