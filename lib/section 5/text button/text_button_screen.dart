import 'package:flutter/material.dart';

class TextButtonScreen extends StatelessWidget {
  const TextButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: (){}, child: Text('Press Me'),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow
        ),
        ),
      ),
    );
  }
}
