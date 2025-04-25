import 'package:flutter/material.dart';

class Row6 extends StatelessWidget {
  const Row6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.star, size: 50,),
                Text('I am learning flutter'),
                Icon(Icons.star, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
