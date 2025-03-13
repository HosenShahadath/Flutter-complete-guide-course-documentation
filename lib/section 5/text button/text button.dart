import 'package:flutter/material.dart';

class TextsButton extends StatelessWidget {
  const TextsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {},
          style: TextButton.styleFrom(
            textStyle: TextStyle(decoration: TextDecoration.underline),
          ),
            child: Text('Press Me'),
        ),
      ),
    );
  }
}
