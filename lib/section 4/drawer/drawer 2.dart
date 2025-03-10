import 'package:flutter/material.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(title: Text('Home'), onTap: (){},),
            ListTile(title: Text('Categories'), onTap: (){},),
            ListTile(title: Text('Orders'), onTap: (){},),
            ListTile(title: Text('Wishlist'), onTap: (){},),
            ListTile(title: Text('Settings'), onTap: (){},),
          ],
        ),
      ),
    );
  }
}
