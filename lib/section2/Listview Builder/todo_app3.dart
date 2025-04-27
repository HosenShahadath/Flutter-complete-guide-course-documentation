import 'package:flutter/material.dart';

class TodoApp3 extends StatelessWidget {
  TodoApp3({super.key});

  final List<String> tasks = ['Go to Gym', 'Go to College', 'Go to Office'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(tasks[index]));
        },
      ),
    );
  }
}
