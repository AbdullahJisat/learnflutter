import 'package:flutter/material.dart';

class E extends StatelessWidget {
  const E({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "E",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
