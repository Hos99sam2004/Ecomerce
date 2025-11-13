import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: 20), Text("Login"), SizedBox(height: 20)],
        ),
      ),
    );
  }
}
