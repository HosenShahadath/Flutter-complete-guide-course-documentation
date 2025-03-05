import 'package:flutter/material.dart';

class ColumnApp2 extends StatelessWidget {
  const ColumnApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Icon(Icons.star, size: 50,),
              Text('I am learning flutter'),
              Icon(Icons.star, size: 50,),
            ],
          ),
          Column(
            children: [
              Container(height: 100, width: 100, color: Colors.blue),
              const SizedBox(height: 5),
              Container(height: 100, width: 100, color: Colors.blue),
              const SizedBox(height: 5),
              Container(height: 100, width: 100, color: Colors.blue),
              const SizedBox(height: 5),
              Container(height: 100, width: 100, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
