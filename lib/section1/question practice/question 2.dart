import 'package:flutter/material.dart';

class PuppyApp extends StatefulWidget {
  const PuppyApp({super.key});

  @override
  State<PuppyApp> createState() => _PuppyAppState();
}

class _PuppyAppState extends State<PuppyApp> {
  double _puppySize = 100.0;

  void _increasePuppySize() {
    setState(() {
      _puppySize *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Puppy Size App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://avatars.githubusercontent.com/u/33576285?v=4',
              width: _puppySize,
              height: _puppySize,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increasePuppySize,
              child: Text('Incrase puppy Size'),
            ),
          ],
        ),
      ),
    );
  }
}
