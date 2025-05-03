import 'package:flutter/material.dart';

class HomeScreen10 extends StatelessWidget {
  const HomeScreen10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context,
              '/second',
            arguments: 'Hello from the first screen!'
          );
        }, child: const Text('Go to Second Screen')),
      ),
    );
  }
}

class SecoundScreen2 extends StatelessWidget {
  const SecoundScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound Screen'),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}

