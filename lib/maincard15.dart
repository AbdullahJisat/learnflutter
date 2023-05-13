import 'package:flutter/material.dart';

void main() {
  runApp(const MainCard15());
}

class MainCard15 extends StatelessWidget {
  const MainCard15({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            // use for shadow
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
