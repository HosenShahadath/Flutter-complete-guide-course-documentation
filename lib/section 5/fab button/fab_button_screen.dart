import 'package:flutter/material.dart';

class FabButtonScreen extends StatelessWidget {
  const FabButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(Icons.phone),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              mini: true,
              onPressed: () {},
              child: Icon(Icons.star),
            ),
            const SizedBox(height: 10,),
            FloatingActionButton.extended(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add Item'),
            )
          ],
        ),
      ),
    );
  }
}
