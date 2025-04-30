import 'package:flutter/material.dart';

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
          color: Colors.purple,
          iconSize: 50,
          tooltip: 'More Info',
        ),
      ),
    );
  }
}
