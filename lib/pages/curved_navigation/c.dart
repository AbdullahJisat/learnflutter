import 'package:flutter/material.dart';

class C extends StatelessWidget {
  const C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text(
          "C",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
