import 'package:flutter/material.dart';

void main() {
  runApp(const MainFirst4());
}

class MainFirst4 extends StatelessWidget {
  const MainFirst4({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Stock Management App"),
          ],
        ),
      ),
    );
  }
}
