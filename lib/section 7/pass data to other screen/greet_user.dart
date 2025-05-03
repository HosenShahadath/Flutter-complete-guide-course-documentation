import 'package:flutter/material.dart';

class GreetUser extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  GreetUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greet App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Enter your name'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GreetScreen(name: controller.text),
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
  final String name;
  const GreetScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Greet Screen')),
      body: Center(child: Text('Hello, $name!')),
    );
  }
}
