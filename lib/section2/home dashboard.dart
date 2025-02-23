import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Dashboard UI'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
        children: [
          MaterialButton(onPressed: (){},
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.category),
              Text('Category 1'),
            ],
          ),
          ),
          MaterialButton(onPressed: (){},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category),
                Text('Category 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
