import 'package:flutter/material.dart';

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView In Flutter'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Image.network('https://picsum.photos/200?image=25'),
          Image.network('https://picsum.photos/200?image=26'),
          Image.network('https://picsum.photos/200?image=27'),
          Image.network('https://picsum.photos/200?image=28'),
          Image.network('https://picsum.photos/200?image=29'),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network('https://picsum.photos/200?image=25', width: 100, height: 100,),
                const Text('Product 1'),
                const Text('Price: \$150'),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network('https://picsum.photos/200?image=25', width: 100, height: 100,),
                const Text('Product 1'),
                const Text('Price: \$150'),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network('https://picsum.photos/200?image=25', width: 100, height: 100,),
                const Text('Product 1'),
                const Text('Price: \$150'),
              ],
            ),
          ),
      ],
      ),
    );
  }
}
