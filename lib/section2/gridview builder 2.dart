import 'package:flutter/material.dart';

class GridviewBuilder2 extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/250?image=237',
    'https://picsum.photos/250?image=238',
    'https://picsum.photos/250?image=239',
    'https://picsum.photos/250?image=240',
    'https://picsum.photos/250?image=241',
    'https://picsum.photos/250?image=242',
    'https://picsum.photos/250?image=243',
    'https://picsum.photos/250?image=244',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: imageUrls.length,
          itemBuilder: (context, index){
            return Image.network(imageUrls[index]);
          }),
    );
  }
}
