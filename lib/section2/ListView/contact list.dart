import 'package:flutter/material.dart';

class ContactList2 extends StatelessWidget {
  const ContactList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        reverse: true,
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jhon Doe'),
            subtitle: Text('555-555-5555'),
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
            leading: Icon(Icons.person),
            title: Text('Shahadath Hosen'),
            subtitle: Text('555-555-555'),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
