import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('Raj sharma'),
            ),
            Container(
              child: Text('Raj Sharma'),
              color: Colors.blue,
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: Text('Raj Sharma'),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
            ),
            Container(
              child: Text('Raj Sharma'),
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('Raj Sharma'),
              color: Colors.blue,
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: Text('Raj Sharma'),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber,
                    blurRadius: 10,
                    offset: Offset(4, 4),
                  ),
                ]
              ),
            ),
            Container(
              child: Text('Raj Sharma'),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              child: Text('Raj Sharma'),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.green,
                ],),
              ),
            ),
            Container(
              child: Image.network('https://avatars.githubusercontent.com/u/33576285?v=4'),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Hello World'),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
            )
          ],
        ),
      ),
    );
  }
}
