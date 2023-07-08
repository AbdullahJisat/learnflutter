import 'package:flutter/material.dart';

void main() {
  runApp(const MainExpandedUI16());
}

class MainExpandedUI16 extends StatelessWidget {
  const MainExpandedUI16({Key? key}) : super(key: key);
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
