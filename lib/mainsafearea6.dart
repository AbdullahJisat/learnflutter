import 'package:flutter/material.dart';

void main() {
  runApp(const MainSafearea6());
}

class MainSafearea6 extends StatelessWidget {
  const MainSafearea6({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepOrange,
          body: Text("Hello its me",
              style: TextStyle(fontFamily: "Helvetica", fontSize: 25)),
        ),
      ),
    );
  }
}
