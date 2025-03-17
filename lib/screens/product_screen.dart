import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class ProductScreen extends StatelessWidget {
  final String name;
  final double price;
  final String image;
  final String description;

  ProductScreen({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Image.network(image, height: 200),
          Text(description, style: TextStyle(fontSize: 16)),
          Text(
            "\$${price.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 18, color: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {
              cartProvider.addToCart(name, price);
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
