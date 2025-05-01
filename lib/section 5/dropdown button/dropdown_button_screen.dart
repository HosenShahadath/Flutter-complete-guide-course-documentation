import 'package:flutter/material.dart';

class DropdownButtonScreen extends StatefulWidget {
  const DropdownButtonScreen({super.key});

  @override
  State<DropdownButtonScreen> createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
        value: dropdownValue,
        onChanged: (value){
          setState(() {
            dropdownValue = value!;
          });
        },
        items: ['One','Two','Three','Four'].map((String value){
          return DropdownMenuItem(
            child: Text(value),
          value: value,
          );
        }).toList(),
        ),
      ),
    );
  }
}
