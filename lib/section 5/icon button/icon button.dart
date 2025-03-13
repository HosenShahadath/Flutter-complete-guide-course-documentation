import 'package:flutter/material.dart';

class IconsButton extends StatelessWidget {
  const IconsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
          color: Colors.purple,
          iconSize: 30,
          tooltip: 'More Info',
        ),
      ),
    );
  }
}
