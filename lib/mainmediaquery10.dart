import 'package:flutter/material.dart';

void main() {
  runApp(const MainMediaquery10());
}

class MainMediaquery10 extends StatelessWidget {
  const MainMediaquery10({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(
                height: height / 4, width: width / 2, color: Colors.blueGrey)),
      ),
    );
  }
}
