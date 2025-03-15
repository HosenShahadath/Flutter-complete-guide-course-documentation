import 'package:flutter/material.dart';

class TimeDateApp extends StatefulWidget {
  const TimeDateApp({super.key});

  @override
  State<TimeDateApp> createState() => _TimeDateAppState();
}

class _TimeDateAppState extends State<TimeDateApp> {
  DateTime? selectedDateTime;

  // Method to invoke the combined DatePicker and TimePicker and update the selectedDateTime
  Future<void> _selectedDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
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
              "Selected DateTime: ${selectedDateTime != null ? '${selectedDateTime!.toLocal()}' : 'None selected'}",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectedDateTime(context),
              child: const Text('Select date and time'),
            ),
          ],
        ),
      ),
    );
  }
}
