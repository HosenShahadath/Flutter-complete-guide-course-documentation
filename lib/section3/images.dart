import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/learn_flutter.jpg',
            width: 150,
            height: 150,
          ),
          Image(image: AssetImage('assets/learn_flutter.jpg'),
          width: 150,
          height: 150,
          ),
        ],
      ),
    );
  }
}
