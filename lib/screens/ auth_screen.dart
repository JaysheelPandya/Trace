import 'package:flutter/material.dart';
import '/services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Call your login function
            await login();
          },
          child: const Text("Login with Auth0"),
        ),
      ),
    );
  }
}
