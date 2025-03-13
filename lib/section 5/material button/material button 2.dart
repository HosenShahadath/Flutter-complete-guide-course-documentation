import 'package:flutter/material.dart';

class MaterialButtonApp2 extends StatelessWidget {
  const MaterialButtonApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.red]),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    constraints:
                    const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Gradient Button',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
