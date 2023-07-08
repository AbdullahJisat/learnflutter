import 'package:flutter/material.dart';

class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "B",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
