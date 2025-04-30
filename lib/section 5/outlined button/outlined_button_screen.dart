import 'package:flutter/material.dart';

class OutlinedButtonScreen extends StatelessWidget {
  const OutlinedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(onPressed: (){}, child: Text('Press Me'),
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Colors.green,
            width: 2
          ),
          textStyle: TextStyle(color: Colors.green, fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          )
        ),
        ),
      ),
    );
  }
}
