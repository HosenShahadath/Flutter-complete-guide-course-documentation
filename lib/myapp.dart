import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%204/drawer/drawer_header.dart';
import 'package:flutter_framework_practice/section%204/snackbar/snackbar_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackbarApp(),
    );
  }
}
