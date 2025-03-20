import 'package:flutter/material.dart';

class AuthScreen1 extends StatefulWidget {
  const AuthScreen1({super.key});

  @override
  State<AuthScreen1> createState() => _AuthScreen1State();
}

class _AuthScreen1State extends State<AuthScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authentication Screen 1')),
      body: const Center(child: Text('Authentication Screen 1')),
    );
  }
}
