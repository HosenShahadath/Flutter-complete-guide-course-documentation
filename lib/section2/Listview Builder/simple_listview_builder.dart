import 'package:flutter/material.dart';

class SimpleListviewBuilder extends StatelessWidget {
  const SimpleListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, int index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
    );
  }
}
