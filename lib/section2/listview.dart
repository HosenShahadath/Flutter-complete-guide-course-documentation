import 'package:flutter/material.dart';

class ListviewApp extends StatelessWidget {
  const ListviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview in flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            title:  Text('Go to gym'),
            subtitle: Text('Go to gym at 7.00 Am'),
          ),
          ListTile(
            title:  Text('Go to gym'),
            subtitle: Text('Go to gym at 7.00 Am'),
          ),
          ListTile(
            title:  Text('Go to gym'),
            subtitle: Text('Go to gym at 7.00 Am'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John doe'),
            subtitle: Text('555-555-555'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John doe'),
            subtitle: Text('555-555-555'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John doe'),
            subtitle: Text('555-555-555'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Egg'),
            subtitle: Text('Egg is very essential for our health'),
            trailing: Text('10 Taka', style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.egg),
          )
        ],
      ),
    );
  }
}
