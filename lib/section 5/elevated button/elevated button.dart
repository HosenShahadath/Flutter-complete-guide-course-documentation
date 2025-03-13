import 'package:flutter/material.dart';

class ElevatedApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.add),
            label: Text('Add Item'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 20),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            elevation: MaterialStateProperty.all(10),
          ),
        ),
      ),
    );
  }
}
