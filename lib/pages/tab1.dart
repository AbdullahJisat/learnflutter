import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  static const String _name = 'Saimon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello, $_name! How are you?',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
      ),
    );
  }
}
