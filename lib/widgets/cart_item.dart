import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  final double price;
  final int quantity;
  final VoidCallback onRemove;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text("\$${price.toStringAsFixed(2)} x $quantity"),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
        onPressed: onRemove,
      ),
    );
  }
}
