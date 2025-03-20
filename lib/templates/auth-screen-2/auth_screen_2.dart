import 'package:flutter/material.dart';

class AuthScreen2 extends StatefulWidget {
  const AuthScreen2({super.key});

  @override
  State<AuthScreen2> createState() => _AuthScreen2State();
}

class _AuthScreen2State extends State<AuthScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authentication Screen 2')),
      body: const Center(child: Text('Authentication Screen 2')),
    );
  }
}
