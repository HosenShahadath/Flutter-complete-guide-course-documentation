import 'package:flutter/material.dart';

class ImageApp1 extends StatelessWidget {
  const ImageApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Image'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Image.asset('assets/learn_flutter.jpg',
          width: 150,
          height: 150,
          ),
          Image(image: AssetImage('assets/learn_flutter.jpg'),
          width: 150,
          height: 150,
          ),
          SizedBox(height: 10,),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/learn_flutter.jpg'),
            radius: 50,
          ),
          const SizedBox(height: 10,),
          const Text(
            'Flutter Tutorial',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            'https://flutter-tutorial.net',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
