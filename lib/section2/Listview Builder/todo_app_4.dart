import 'package:flutter/material.dart';

class TodoApp4 extends StatelessWidget {
  TodoApp4({super.key});

  List<Task> tasks = [
    Task(title: 'Go to Gym', subtitle: 'Go to Gym at 6:00 AM'),
    Task(title: 'Go to College', subtitle: 'Go to College at 8:00 AM'),
    Task(title: 'Go to Office', subtitle: 'Go to Office at 11:00 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context,index){
        return ListTile(
          title: Text(tasks[index].title),
          subtitle: Text(tasks[index].subtitle),
        );
      }),
    );
  }
}

class Task {
  final String title;
  final String subtitle;

  Task({required this.title, required this.subtitle});
}
