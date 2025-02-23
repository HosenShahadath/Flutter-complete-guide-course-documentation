import 'package:flutter/material.dart';

class ColumnAndRow3 extends StatelessWidget {
  const ColumnAndRow3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue,),
                Icon(Icons.star, color: Colors.blue,),
                Icon(Icons.star, color: Colors.blue,),
                Icon(Icons.star, color: Colors.blue,),
                Icon(Icons.star, color: Colors.blue,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.blue,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
