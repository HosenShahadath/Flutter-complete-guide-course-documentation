import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Press Me')),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Press Me'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 20),
                ),
              ),
              child: Text('Custom Style'),
            )
          ],
        ),
      ),
    );
  }
}
