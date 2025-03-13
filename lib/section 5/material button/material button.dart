import 'package:flutter/material.dart';

class MaterialButtonApp extends StatelessWidget {
  const MaterialButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 5,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add),
              SizedBox(width: 8,),
              Text('Add Item'),
            ],
          ),
        ),
      ),
    );
  }
}
