import 'package:flutter/material.dart';

class GridviewBuilder3 extends StatelessWidget {
  const GridviewBuilder3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 9,
          itemBuilder: (context, index){
           return Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black),
             ),
             child: Center(
               child: index % 2 == 0 ? const Text('X') : const Text('0'),
             ),
           );
          }),
    );
  }
}
