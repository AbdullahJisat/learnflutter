import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.redAccent,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellowAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
