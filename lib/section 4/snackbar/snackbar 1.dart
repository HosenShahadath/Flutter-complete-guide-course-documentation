import 'package:flutter/material.dart';

class Snackbar1 extends StatelessWidget {
  const Snackbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is Snackbar'),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),
                backgroundColor: Colors.blue,
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
