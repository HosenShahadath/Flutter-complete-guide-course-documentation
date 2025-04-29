import 'package:flutter/material.dart';

class SimpleDrawer extends StatelessWidget {
  const SimpleDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer in Flutter')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.info), title: Text('About')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
    );
  }
}
