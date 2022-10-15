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
        body: Center(
          // child: Image(image: AssetImage("images/demo.png")),
          child: Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1664215795139-516f3a4ce81b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80")
              ),
        ),
        // body: Container(
        //     height: 100,
        //     width: 100,
        //     color: Colors.blue,
        //     child: Image(image: AssetImage("images/demo.png"))),
      ),
    );
  }
}
