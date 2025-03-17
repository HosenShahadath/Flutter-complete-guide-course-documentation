import 'package:flutter/material.dart';

class HomeScreenApp extends StatelessWidget {
  HomeScreenApp({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Greet App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(hintText: 'Enter your Name'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GreetScreen(name: _controller.text),
                  ),
                );
              },
              child: Text('Greet'),
            ),
          ],
        ),
      ),
    );
  }
}

class GreetScreen extends StatelessWidget {
  const GreetScreen({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Greet Screen')),
      body: Center(child: Text('Hello, $name!')),
    );
  }
}
