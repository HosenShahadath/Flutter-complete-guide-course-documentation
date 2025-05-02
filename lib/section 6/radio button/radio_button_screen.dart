import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  Gender? _selectedOption = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
            Gender.values.map((option) {
              return RadioListTile(
                value: option,
                title: Text(option.text),
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              );
            }).toList(),
      ),
    );
  }
}

enum Gender {
  male("Male"),
  female("Female"),
  others("Others");

  // Members
  final String text;
  const Gender(this.text);
}
