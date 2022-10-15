import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepPurple,
          child: Hero(
            // tag same as main.dart
            tag: "add",
            child: Icon(
              Icons.add_a_photo,
              size: 150,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
