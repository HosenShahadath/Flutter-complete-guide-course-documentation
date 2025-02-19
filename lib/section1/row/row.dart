import 'package:flutter/material.dart';

class RowApp extends StatelessWidget {
  const RowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row In Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 50,),
              Text('I am learning flutter'),
              Icon(Icons.star, size: 50,),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.blueAccent,),
              Icon(Icons.star, color: Colors.red,),
              Icon(Icons.star, color: Colors.black,),
              Icon(Icons.star, color: Colors.grey,),
              Icon(Icons.star_border, color: Colors.green,),
            ],
          ),
        ],
      ),
    );
  }
}
