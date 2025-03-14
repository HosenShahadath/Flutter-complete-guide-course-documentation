import 'package:flutter/material.dart';

class CheckBoxApp extends StatefulWidget {
  const CheckBoxApp({super.key});

  @override
  State<CheckBoxApp> createState() => _CheckBoxAppState();
}

class _CheckBoxAppState extends State<CheckBoxApp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          child: Row(
            children: [
              Checkbox(
                value: isChecked,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text('I Accept the aggrement'),
            ],
          ),
        ),
      ),
    );
  }
}
