import 'package:flutter/material.dart';

class CheckBoxApp3 extends StatefulWidget {
  const CheckBoxApp3({super.key});

  @override
  State<CheckBoxApp3> createState() => _CheckBoxApp3State();
}

class _CheckBoxApp3State extends State<CheckBoxApp3> {
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text('Accept Terms & Conditions'),
              value: isAccepted,
              onChanged: (bool? value) {
                setState(() {
                  isAccepted = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
