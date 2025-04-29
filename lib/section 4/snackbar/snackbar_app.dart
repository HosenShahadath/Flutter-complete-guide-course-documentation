import 'package:flutter/material.dart';

class SnackbarApp extends StatelessWidget {
  const SnackbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is a SnackBar!'),
                backgroundColor: Colors.blue,
                duration: Duration(seconds: 3),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),
              ),
            );
          },
          child: Text('Click Here'),
        ),
      ),
    );
  }
}
