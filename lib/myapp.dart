import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%204/alert%20dialog/alert_dialog_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlertDialogApp(),
    );
  }
}
