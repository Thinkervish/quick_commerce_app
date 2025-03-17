class Order {
  final String orderId;
  final double totalAmount;
  final DateTime orderDate;

  Order({
    required this.orderId,
    required this.totalAmount,
    required this.orderDate,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      orderId: json['orderId'],
      totalAmount: json['totalAmount'],
      orderDate: DateTime.parse(json['orderDate']),
    );
  }
}
