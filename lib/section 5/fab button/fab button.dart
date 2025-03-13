import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  const FabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        mini: true,
          onPressed: (){},
          backgroundColor: Colors.grey,
          child: const Icon(Icons.add),
      ),
    );
  }
}
