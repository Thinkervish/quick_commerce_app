import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'screens/home_screen.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(TestHomeApp());
}

class TestHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Campus Connect',
        initialRoute: '/register',  // Show registration page first
        routes: {
          '/': (context) => HomeScreen(),
          '/register': (context) => RegistrationScreen(),
        },
      ),
    );
  }
}
