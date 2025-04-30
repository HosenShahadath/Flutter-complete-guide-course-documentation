import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%204/alert%20dialog/alert_dialog_app.dart';
import 'package:flutter_framework_practice/section%204/table/data_table_screen.dart';
import 'package:flutter_framework_practice/section%204/table/table_app_2.dart';
import 'package:flutter_framework_practice/section%204/table/table_app_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TableAppModel(),
    );
  }
}
