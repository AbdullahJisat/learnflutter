import 'package:flutter/material.dart';

void main() {
  runApp(const MainGridView15());
}

class MainGridView15 extends StatelessWidget {
  const MainGridView15({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
