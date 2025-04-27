import 'package:flutter/material.dart';

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: [
        MaterialButton(onPressed: (){},
          color: Colors.red,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.category_outlined),
              Text('Category-1')
            ],
          ),
        ),
        MaterialButton(onPressed: (){},
          color: Colors.blue,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.category_outlined),
              Text('Category-2')
            ],
          ),
        ),
      ],
      ),
    );
  }
}
