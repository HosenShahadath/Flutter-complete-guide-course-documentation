import 'package:flutter/material.dart';

class PuppyListScreen extends StatelessWidget {
  final List<String> puppyImages = [
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puppy List'),
      ),
      body: ListView.builder(
        itemCount: puppyImages.length,
        itemBuilder: (context, index){
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.network(puppyImages[index]),
                Padding(
                    padding: const EdgeInsets.all(8),
                  child: Text('Puppy ${index+1}', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
