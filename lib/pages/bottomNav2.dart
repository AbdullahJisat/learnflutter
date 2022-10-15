import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Two",
          // style: Theme.of(context).textTheme.headline1,
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ), // like <h1> in HTML),
      ),
    );
  }
}
