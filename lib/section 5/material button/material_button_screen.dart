import 'package:flutter/material.dart';

class MaterialButtonScreen extends StatelessWidget {
  const MaterialButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MaterialButton(onPressed: (){},
            child: const Text('Press Me'),
            ),
            MaterialButton(onPressed: (){},

            )
          ],
        ),
      ),
    );
  }
}
