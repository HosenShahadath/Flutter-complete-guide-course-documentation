import 'package:flutter/material.dart';

class RowApp3 extends StatelessWidget {
  const RowApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row In Flutter'),
      ),
      body: Container(
        color: Colors.green,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            50, (index) => Flexible(
              fit: FlexFit.loose,
              child: const Icon(Icons.star, color: Colors.blueAccent,))
          ),
        ),
      ),
    );
  }
}
