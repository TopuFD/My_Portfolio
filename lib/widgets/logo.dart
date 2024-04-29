import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Topu",
      style: TextStyle(
          fontSize: 20,
          color: Color(0xFFFFE600),
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline),
    );
  }
}
