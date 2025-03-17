import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Column(
        children: [
          ListTile(
            title: Text("John Doe"),
            subtitle: Text("john.doe@example.com"),
            leading: Icon(Icons.person, size: 40),
          ),
          Divider(),
          ListTile(
            title: Text("Past Orders"),
            subtitle: Text("View your previous purchases"),
            trailing: Icon(Icons.history),
          ),
          Divider(),
          ListTile(
            title: Text("Payment Methods"),
            subtitle: Text("Manage your payment options"),
            trailing: Icon(Icons.payment),
          ),
        ],
      ),
    );
  }
}
