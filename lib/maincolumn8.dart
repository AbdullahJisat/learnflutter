import 'package:flutter/material.dart';

void main() {
  runApp(const MainColumn8());
}

class MainColumn8 extends StatelessWidget {
  const MainColumn8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Column"),
          ),
          body: Column(
            children: [
              Container(
                height: 200,
                width: 150,
                color: Colors.deepPurple.shade400,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                width: 150,
                color: Colors.deepOrange,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                width: 150,
                color: Colors.deepPurpleAccent.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
