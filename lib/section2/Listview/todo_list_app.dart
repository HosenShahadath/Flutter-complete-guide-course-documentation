import 'package:flutter/material.dart';

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        reverse: false,
        children: [
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: Text('Go to Gym'),
            subtitle: Text('Go to gym at 6.00 AM'),
            trailing: Icon(Icons.timelapse),
          ),
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: Text('Go to Gym'),
            subtitle: Text('Go to gym at 6.00 AM'),
            trailing: Icon(Icons.timelapse),
          ),
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: Text('Go to Gym'),
            subtitle: Text('Go to gym at 6.00 AM'),
            trailing: Icon(Icons.timelapse),
          ),
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: Text('Go to Gym'),
            subtitle: Text('Go to gym at 10.00 AM'),
            trailing: Icon(Icons.timelapse),
          ),
        ],
      ),
    );
  }
}
