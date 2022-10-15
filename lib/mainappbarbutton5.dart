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
        appBar: AppBar(
          title: Text("Stock Management App"),
          centerTitle: true,
          leading: Icon(Icons.message),
          actions: [
            IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {
                  print('Working');
                })
          ],
        ),
        body: Center(
            child: Text(
          "Category Page",
          style: TextStyle(fontSize: 25),
        )),
      ),
    );
  }
}
