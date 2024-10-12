import 'package:flutter/material.dart';
import '/services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Call your login function
            await login();
          },
          child: Text("Login with Auth0"),
        ),
      ),
    );
  }
}
