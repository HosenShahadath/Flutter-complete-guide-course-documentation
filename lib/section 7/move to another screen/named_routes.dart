import 'package:flutter/material.dart';

class NamedRoutes extends StatelessWidget {
  const NamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text('Go to profile page'),
        ),
      ),
    );
  }
}