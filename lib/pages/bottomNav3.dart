import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Three",
          style: TextStyle(
            fontSize: 18,
            height:
                2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
            color: Colors.redAccent, //font color
            backgroundColor: Colors.black12, //background color
            letterSpacing: 5, //letter spacing
            // decoration: TextDecoration.underline, //make underline
            // decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.double, //double underline
            decorationColor: Colors.brown, //text decoration 'underline' color
            decorationThickness: 1.5, //decoration 'underline' thickness
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
