import 'package:flutter/material.dart';

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(value: isSwitched,
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
              onChanged: (value){
              setState(() {
                isSwitched = value;
              });
              }),
          Text('Switch is ${isSwitched ? "ON" : 'OFF'}', style: TextStyle(
            fontSize: 20,
          ),)
        ],
      ),
    );
  }
}
