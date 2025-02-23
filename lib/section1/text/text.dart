import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your App Name')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Raj Sharma'),
          Text(
            'Raj Sharma',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Text(
            'Hello I am Shahadath and I am a flutter Developer at Technology Channel.',
            textAlign: TextAlign.center,
          ),
          Text(
            'Raj Sharma',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          Text(
            'Raj Sharma',
            style: TextStyle(backgroundColor: Colors.blue, fontSize: 20),
          ),
          Text(
            'A very long text that might not fit the screen.' * 10,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
