import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
            value: dropdownValue,
            items: ['One', 'Two', 'Three', 'Four']
                .map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );}).toList(),
            onChanged: (String? newValue){
              setState(() {
                dropdownValue = newValue!;
              });
            }
        ),
      ),
    );
  }
}
