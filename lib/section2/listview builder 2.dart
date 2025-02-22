import 'package:flutter/material.dart';

class ListViewBuilderApp2 extends StatelessWidget {
  final List<String> tasks = [
    'Go to gym',
    'Go to office',
    'Go to college',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(tasks[index]),
            );
          },
      ),
    );
  }
}
