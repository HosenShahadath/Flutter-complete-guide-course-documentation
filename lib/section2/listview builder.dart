import 'package:flutter/material.dart';

class ListViewBuilderApp extends StatelessWidget {
  const ListViewBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('Item $index'),
            );
          },
      ),
    );
  }
}
