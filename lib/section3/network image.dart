import 'package:flutter/material.dart';

class NetworkImage extends StatelessWidget {
  const NetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Image'),
      ),
      body: Column(
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
