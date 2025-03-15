import 'package:flutter/material.dart';

class SwitchApp2 extends StatefulWidget {
  const SwitchApp2({super.key});

  @override
  State<SwitchApp2> createState() => _SwitchApp2State();
}

class _SwitchApp2State extends State<SwitchApp2> {
  var settings = <String,bool>{
    'Wi-Fi' : true,
    'Bluetooth' : false,
    'Airplane Mode'  : false,
    'Mobile Data' : true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: settings.keys.map((String key){
          return SwitchListTile(
              title: Text(key),
              value: settings[key]!,
              onChanged: (bool value){
                setState(() {
                  settings[key] = value;
                });
              });
        }).toList(),
      ),
    );
  }
}
