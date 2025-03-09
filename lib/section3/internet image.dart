import 'package:flutter/material.dart';

class InternetImage extends StatelessWidget {
  const InternetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Image'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://picsum.photos/250?image=9',
              width: 150,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
