import 'package:blog/iconview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainHero18());
}

class MainHero18 extends StatelessWidget {
  const MainHero18({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
            child: Hero(
              // tag same for second.dart
              tag: "add",
              child: Icon(
                Icons.add_a_photo,
                size: 50,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => IconView()));
            },
          ),
        ),
      ),
    );
  }
}
