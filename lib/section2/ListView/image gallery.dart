import 'package:flutter/material.dart';

class GallaryApp extends StatelessWidget {
  const GallaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Gallery'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.network('https://picsum.photos/250?image=9'),
          Image.network('https://picsum.photos/250?image=10'),
          Image.network('https://picsum.photos/250?image=11'),
          Image.network('https://picsum.photos/250?image=12'),
          Image.network('https://picsum.photos/250?image=13'),
          Image.network('https://picsum.photos/250?image=14'),
          Image.network('https://picsum.photos/250?image=15'),
        ],
      ),
    );
  }
}
