import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(String name, double price) {
    _items.add(
      Product(
        id: DateTime.now().toString(), // Generate a unique ID
        name: name,
        price: price,
        imageUrl: '', // Default empty image URL
        description: '', // Default empty description
        stock: 1, // Default stock
      ),
    );
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
