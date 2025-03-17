import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _otp;
  bool isAuthenticated = false;

  void sendOTP(String rollNumber, String phone) {
    // Simulate OTP generation
    _otp = '123456'; // This should come from backend
    print('OTP Sent: $_otp'); // Replace with API call
  }

  bool verifyOTP(String enteredOTP) {
    if (enteredOTP == _otp) {
      isAuthenticated = true;
      notifyListeners();
      return true;
    }
    return false;
  }
}
