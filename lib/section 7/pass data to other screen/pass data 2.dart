import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class HomeScreen4 extends StatelessWidget {
  HomeScreen4({super.key});
  final Product product = Product(name: 'Laptop', price: 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductScreen(product: product),
              ),
            );
          },
          child: const Text('View Product'),
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final Product product;

  ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name : ${product.name}'),
            Text('Price : ${product.price}'),
          ],
        ),
      ),
    );
  }
}
