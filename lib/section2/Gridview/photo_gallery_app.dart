import 'package:flutter/material.dart';

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      children: [
        Image.network('https://picsum.photos/200?image=25'),
        Image.network('https://picsum.photos/200?image=26'),
        Image.network('https://picsum.photos/200?image=27'),
        Image.network('https://picsum.photos/200?image=28'),
        Image.network('https://picsum.photos/200?image=29'),
        Image.network('https://picsum.photos/200?image=30'),
      ],
      ),
    );
  }
}
