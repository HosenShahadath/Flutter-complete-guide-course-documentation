import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section2/Listview/todo_list_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListApp(),
    );
  }
}
