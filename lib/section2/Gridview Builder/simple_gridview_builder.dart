import 'package:flutter/material.dart';

class SimpleGridviewBuilder extends StatelessWidget {
  const SimpleGridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridTile(child: Text('Item $index'));
        },
      ),
    );
  }
}
