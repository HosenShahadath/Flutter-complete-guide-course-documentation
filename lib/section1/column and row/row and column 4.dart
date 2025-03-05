import 'package:flutter/material.dart';

class RowandColumn4 extends StatelessWidget {
  const RowandColumn4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/33576285?v=4'),
          ),
          Padding(padding: EdgeInsets.all(2.0),
          ),
          Column(
            children: [
              Text('John Doe',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              Text(
                'Flutter Devolper',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
