import 'package:flutter/material.dart';

class DropDownExample2 extends StatefulWidget {
  const DropDownExample2({super.key});

  @override
  State<DropDownExample2> createState() => _DropDownExample2State();
}

class _DropDownExample2State extends State<DropDownExample2> {
  String? selectedCountry = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
            value: selectedCountry,
            items: ['India', 'Usa', 'UK', 'Canada']
            .map((String value) {
              return DropdownMenuItem(
                  value: value,
                  child: Text(value));
            }).toList(),
            onChanged: (String? newValue){
              setState(() {
                selectedCountry = newValue!;
              });
      },
        ),
      ),
    );
  }
}
