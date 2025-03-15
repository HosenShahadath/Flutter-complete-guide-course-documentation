import 'package:flutter/material.dart';

class SelectTimeApp extends StatefulWidget {
  const SelectTimeApp({super.key});

  @override
  State<SelectTimeApp> createState() => _SelectTimeAppState();
}

class _SelectTimeAppState extends State<SelectTimeApp> {
  TimeOfDay selectedTime = TimeOfDay.now();

  // Method to invoke the timepicker and update the selectedTime
  Future<void> _selectTime(BuildContext context) async{
    final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
    );

    if(picked != null && picked != selectedTime){
      setState(() {
        selectedTime = picked;
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
            Text('Selected Time: ${selectedTime.format(context)}',
            style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () => _selectTime(context),
                child: const Text('Select a time')
            ),
          ],
        ),
      ),
    );
  }
}
