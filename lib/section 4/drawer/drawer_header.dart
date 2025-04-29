import 'package:flutter/material.dart';

class DrawerHeaderApp extends StatelessWidget {
  const DrawerHeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer in Flutter')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://flutter-tutorial.net/images/sample_background_image.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/33576285?v=4',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('John Doe', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.info), title: Text('About')),
          ],
        ),
      ),
    );
  }
}
