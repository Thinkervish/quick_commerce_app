import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product product; // Product object passed from the product list

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Card(
      child: Column(
        children: [
          Image.network(
            product.imageUrl,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text("\$${product.price}"),
          ElevatedButton(
            onPressed: () {
              cartProvider.addToCart(product.name, product.price);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${product.name} added to cart!')),
              );
            },
            child: Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
