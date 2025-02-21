import 'package:flutter/material.dart';

class ColumnRowApp extends StatelessWidget{
  const ColumnRowApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column and Row'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage( 'https://avatars.githubusercontent.com/u/33576285?v=4'),
          ),
          Padding(padding: EdgeInsets.all(2),),
          Column(
            children: <Widget>[
              Text(
                'Jhon Doe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
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