class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  final int stock;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.stock,
  });

  // Convert JSON data to Product object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      description: json['description'],
      stock: json['stock'],
    );
  }

  get quantity => null;

  // Convert Product object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'description': description,
      'stock': stock,
    };
  }
}
