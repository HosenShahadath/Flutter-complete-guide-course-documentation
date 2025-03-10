import 'package:flutter/material.dart';

class Drawer3 extends StatelessWidget {
  const Drawer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Social Media')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('U'),
              ),
            ),
            ListTile(title: Text('Profile'), onTap: (){},),
            ListTile(title: Text('Freinds'), onTap: (){},),
            ListTile(title: Text('Messages'), onTap: (){},),
            ListTile(title: Text('Settings'), onTap: (){},),
          ],
        ),
      ),
    );
  }
}
