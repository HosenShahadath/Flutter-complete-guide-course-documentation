import 'package:flutter/material.dart';

enum Gender {
  male('Male'),
  female('Female'),
  others('Others');

  final String text;
  const Gender(this.text);
}


class RadioButtonApp extends StatefulWidget {
  const RadioButtonApp({super.key});

  @override
  State<RadioButtonApp> createState() => _RadioButtonAppState();
}

class _RadioButtonAppState extends State<RadioButtonApp> {
  Gender? _selectedOption = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: Gender.values.map((option){
          return RadioListTile(
              title: Text(option.text),
              value: option,
              groupValue: _selectedOption,
              onChanged: (value){
                setState(() {
                  _selectedOption = value!;
                });
              });
        }).toList(),
      ),
    );
  }
}
