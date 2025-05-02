import 'dart:math';

import 'package:flutter/material.dart';

class BitrhdayPicker extends StatefulWidget {
  const BitrhdayPicker({super.key});

  @override
  State<BitrhdayPicker> createState() => _BitrhdayPickerState();
}

class _BitrhdayPickerState extends State<BitrhdayPicker> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    );

    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Selected Birthday: ${selectedDate?.toLocal().toString().split(' ')[0]}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select your birthday'),
            ),
          ],
        ),
      ),
    );
  }
}
