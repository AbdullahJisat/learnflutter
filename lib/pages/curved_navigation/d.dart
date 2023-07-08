import 'package:flutter/material.dart';

class D extends StatelessWidget {
  const D({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          "D",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
