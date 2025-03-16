import 'package:flutter/material.dart';

// Home Screen (HomeScreen)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Profile Page'),
          onPressed: () {
            // Navigate to the Profile Screen
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ),
    );
  }
}

// Profile Screen (ProfileScreen)
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: const Center(
        child: Text("Welcome to the Profile Page!"),
      ),
    );
  }
}
