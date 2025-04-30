import 'package:flutter/material.dart';

class MaterialButtonScreen extends StatelessWidget {
  const MaterialButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MaterialButton(onPressed: (){},
            child: const Text('Press Me'),
            ),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: (){},
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10,),
                  Text('Add Item')
                ],
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: (){},
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue, Colors.red
                ]),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                constraints: BoxConstraints(minWidth: 88, maxHeight: 36),
                alignment: Alignment.center,
                child: Text(
                  'Gradient Button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
