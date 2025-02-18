import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second App'),
      ),
      body: const Center(
        child: Text('Shahadath Hosen'),
      ),
    );
  }
}
