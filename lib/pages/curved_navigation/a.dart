import 'package:flutter/material.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "A",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
