import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  const Text('I am on top!'),
                ],
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/33576285?v=4'),
                  ),
                  DecoratedBox(decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  child: const SizedBox(width: 20, height: 20,),
                  )
                ],
              ),
              Stack(
                children: [
                  Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                    padding: const EdgeInsets.all(8),
                        color: Colors.red,
                        child: const Text(
                          '20% OFF',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
