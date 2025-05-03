import 'package:flutter/material.dart';

// Home Screen (HomeScreen)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Profile Page'),
          onPressed: () {
            // Navigation Code Here
          },
        ),
      ),
    );
  }
}