import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  final String baseUrl = "http://localhost:8080/api/auth";

  Future<void> sendOTP(String rollNumber, String phone) async {
    final response = await http.post(
      Uri.parse('$baseUrl/sendOTP'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"rollNumber": rollNumber, "phone": phone}),
    );

    if (response.statusCode == 200) {
      print("OTP Sent!");
    } else {
      print("Error sending OTP");
    }
  }
}
