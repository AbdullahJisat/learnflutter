import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MainLiquid14());
}

class MainLiquid14 extends StatelessWidget {
  const MainLiquid14({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(color: Colors.amber),
      Container(color: Colors.green),
      Container(color: Colors.indigo),
      Container(color: Colors.cyan),
      Container(color: Colors.red),
      Container(color: Colors.yellow),
      Container(color: Colors.orange),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(pages: pages),
      ),
    );
  }
}
