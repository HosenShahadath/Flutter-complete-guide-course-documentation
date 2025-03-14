import 'package:flutter/material.dart';

class CheckBoxApp2 extends StatefulWidget {
  const CheckBoxApp2({super.key});

  @override
  State<CheckBoxApp2> createState() => _CheckBoxApp2State();
}

class _CheckBoxApp2State extends State<CheckBoxApp2> {
  var options = <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  var selectedOptions = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children:
              options.map((String option) {
                return CheckboxListTile(
                  value: selectedOptions.contains(option),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true){
                        selectedOptions.add(option);
                      }else{
                        selectedOptions.remove(option);
                      }
                    });
                  },
                );
              }).toList(),
        ),
      ),
    );
  }
}
