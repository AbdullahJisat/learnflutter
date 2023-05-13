import 'package:flutter/material.dart';

void main() {
  runApp(const MainRow8());
}

class MainRow8 extends StatelessWidget {
  const MainRow8({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Row"),
          ),
          body: Row(
            children: [
              Container(
                height: 200,
                width: 150,
                color: Colors.deepPurple.shade400,
              ),
              SizedBox(width: 10),
              Container(
                height: 200,
                width: 150,
                color: Colors.deepOrange,
              ),
              SizedBox(width: 10),
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
