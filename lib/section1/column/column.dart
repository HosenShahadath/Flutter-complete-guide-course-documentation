import 'package:flutter/material.dart';

class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Column In Flutter'),
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
              Container(height: 100, width: 100, color: Colors.blue,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.blue,),
              SizedBox(height: 5,),
              Container(height: 100, width: 100, color: Colors.blue,),
              SizedBox(height: 5,),
            ],
          )
        ],
      ),
    );
  }
}
