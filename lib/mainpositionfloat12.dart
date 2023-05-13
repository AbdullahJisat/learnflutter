import 'package:flutter/material.dart';

void main() {
  runApp(const MainPositionfloat12());
}

class MainPositionfloat12 extends StatelessWidget {
  const MainPositionfloat12({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hello");
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.antiAlias,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber.shade800,
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal,
                ),
              ),
              Positioned(
                bottom: -50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
