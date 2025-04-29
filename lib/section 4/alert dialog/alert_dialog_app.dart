import 'package:flutter/material.dart';

class AlertDialogApp extends StatelessWidget {
  const AlertDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () => showMyAlertDialog(context),
          child: Text('Click Me'),
        ),
      ),
    );
  }

  void showMyAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog Title'),
          content: Text(
            'This is an alert dialog. Are you sure want to proceed?',
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Cancel')),
            TextButton(onPressed: () {}, child: Text('Ok')),
          ],
        );
      },
    );
  }
}
