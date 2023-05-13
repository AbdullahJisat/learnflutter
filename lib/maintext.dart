import 'package:flutter/material.dart';

void main() {
  runApp(const MainText());
}

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

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
