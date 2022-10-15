import 'package:blog/pages/page1.dart';
import 'package:blog/pages/page2.dart';
import 'package:blog/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _pageController = PageController(
    // show page 1 by 0
    initialPage: 0,
  );

// use for state object not build twice
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
