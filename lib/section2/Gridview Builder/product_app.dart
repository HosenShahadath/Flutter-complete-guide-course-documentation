import 'package:flutter/material.dart';

class ProductApp extends StatelessWidget {
  ProductApp({super.key});

  List<Product> products = [
    Product(
      title: 'Product 1',
      subtitle: 'Subtitle 1',
      imageUrl: 'https://picsum.photos/250?image=237',
    ),
    Product(
      title: 'Product 2',
      subtitle: 'Subtitle 2',
      imageUrl: 'https://picsum.photos/250?image=238',
    ),
    Product(
      title: 'Product 3',
      subtitle: 'Subtitle 3',
      imageUrl: 'https://picsum.photos/250?image=239',
    ),
    // Add more sample products
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(products[index].imageUrl),
                  Text(products[index].title),
                  Text(products[index].subtitle),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String title;
  final String subtitle;
  final String imageUrl;

  Product({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}
