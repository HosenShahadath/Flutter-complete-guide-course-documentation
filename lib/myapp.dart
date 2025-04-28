import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/Cached%20Image/cached_image_app.dart';
import 'package:flutter_framework_practice/section3/Internet%20Image/profile_app_internet.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CachedImageApp(),
    );
  }
}
