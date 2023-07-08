import 'package:blog/pages/modalbottomsheet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainModalBottomSheet27());
}

class MainModalBottomSheet27 extends StatelessWidget {
  const MainModalBottomSheet27({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modal Bootom Sheet',
      theme: ThemeData(primarySwatch: Colors.green),
      home: ModalBottomSheet(),
    );
  }
}
