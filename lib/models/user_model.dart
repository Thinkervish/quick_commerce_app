class User {
  final String rollNumber;
  final String phone;
  final String name;
  final String email;

  User({
    required this.rollNumber,
    required this.phone,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      rollNumber: json['rollNumber'],
      phone: json['phone'],
      name: json['name'],
      email: json['email'],
    );
  }
}
