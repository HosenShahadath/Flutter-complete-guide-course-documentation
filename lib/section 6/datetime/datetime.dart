import 'package:flutter/material.dart';

class DateTimeApp extends StatefulWidget {
  const DateTimeApp({super.key});

  @override
  State<DateTimeApp> createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  DateTime selectedDate = DateTime.now();

  // Method to invoke the DatePicker and update the selected Date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
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
              "Selected Birthday: ${selectedDate.toLocal().toString().split(' ')[0]}",
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
