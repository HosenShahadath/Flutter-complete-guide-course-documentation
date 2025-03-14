import 'package:flutter/material.dart';

class CheckBoxApp4 extends StatefulWidget {
  const CheckBoxApp4({super.key});

  @override
  State<CheckBoxApp4> createState() => _CheckBoxApp4State();
}

class _CheckBoxApp4State extends State<CheckBoxApp4> {
  List<String> interests = [
    'Reading',
    'Music',
    'Travel',
    'Sports',
    'Cooking'
  ];

  List<String> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: interests.map((String interest){
         return CheckboxListTile(
             title: Text(interest),
             value: selectedInterests.contains(interest),
             onChanged: (bool? value){
               setState(() {
                 if(value == true){
                   if(!selectedInterests.contains(interest)){
                     selectedInterests.add(interest);
                   }
                 }else{
                   selectedInterests.remove(interest);
                 }
               });
             });
       }).toList(),
     ),
   );
  }
}
