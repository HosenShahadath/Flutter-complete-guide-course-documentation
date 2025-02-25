import 'package:flutter/material.dart';

class FontApp extends StatelessWidget {
  const FontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font In Flutter'),
      ),
      body: Text(
        'I am using local font',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
