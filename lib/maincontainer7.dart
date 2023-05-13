import 'package:flutter/material.dart';

void main() {
  runApp(const MainContainer7());
}

class MainContainer7 extends StatelessWidget {
  const MainContainer7({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 200,
            width: 500,
            // color: Colors.amber),
            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Text(
              "Hello from Box",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
