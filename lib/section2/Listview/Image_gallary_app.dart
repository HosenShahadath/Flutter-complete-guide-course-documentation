import 'package:flutter/material.dart';

class ImageGallaryApp extends StatelessWidget {
  const ImageGallaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
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
