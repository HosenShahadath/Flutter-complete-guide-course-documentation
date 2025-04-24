import 'package:flutter/material.dart';

class TextApp2 extends StatelessWidget {
  const TextApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text in Flutter'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Raj Sharma'),
            const SizedBox(height: 20,),
            Text(
              'Raj Sharma',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'Raj Sharma',
              style: TextStyle(
                backgroundColor: Colors.greenAccent,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'A very long text that might ont fit the screen. ' * 10,
              //overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 20,),
            Text(
              'A very long text that might ont fit the screen. ' * 10,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
