import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(leading: Icon(Icons.home), title: const Text('Home')),
            ListTile(leading: Icon(Icons.info), title: const Text('About')),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('Click Drawer Icon')),
    );
  }
}
