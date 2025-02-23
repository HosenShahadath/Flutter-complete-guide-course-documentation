import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Button 1'),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
                Text('Hi I am Flutter Developer'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
