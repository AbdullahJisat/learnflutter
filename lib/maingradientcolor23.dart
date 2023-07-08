import 'package:flutter/material.dart';

void main() {
  runApp(const MainGradientColor23());
}

class MainGradientColor23 extends StatelessWidget {
  const MainGradientColor23({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
                colors: [
                  Color.fromARGB(255, 250, 19, 3),
                  Color.fromARGB(255, 252, 0, 84),
                  Color.fromARGB(255, 14, 2, 249),
                  Color.fromARGB(255, 1, 141, 255),
                  Color.fromARGB(255, 2, 249, 175),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                Colors.red,
                Colors.pink,
                Colors.purple,
                Colors.blue,
                Colors.deepOrange,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
