import 'package:http/http.dart' as http;
import 'dart:convert';

class CartService {
  final String baseUrl = "http://localhost:8080/api/cart";

  Future<void> addToCart(String productId, int quantity) async {
    await http.post(
      Uri.parse('$baseUrl/add'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"productId": productId, "quantity": quantity}),
    );
  }

  Future<void> removeFromCart(String productId) async {
    await http.delete(Uri.parse('$baseUrl/remove/$productId'));
  }
}
