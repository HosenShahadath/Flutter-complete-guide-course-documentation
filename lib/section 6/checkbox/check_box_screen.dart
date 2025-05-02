import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool isChecked = false;
  var options = <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  var selectedOptions = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:
            options.map((String option) {
              return CheckboxListTile(
                value: selectedOptions.contains(option),
                title: Text(option),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      selectedOptions.add(option);
                    } else {
                      selectedOptions.remove(option);
                    }
                  });
                },
              );
            }).toList(),
      ),
    );
  }
}
