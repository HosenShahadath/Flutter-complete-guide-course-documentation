import 'package:flutter/material.dart';

class RowApp5 extends StatelessWidget {
  const RowApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row In Flutter')),
      body: Container(
        color: Colors.green,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              50,
              (index) =>
                  Flexible(child: Icon(Icons.star, color: Colors.yellow)),
            ),
          ),
        ),
      ),
    );
  }
}
