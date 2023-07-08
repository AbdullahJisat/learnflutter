import 'package:blog/pages/curved_navigation/a.dart';
import 'package:blog/pages/curved_navigation/b.dart';
import 'package:blog/pages/curved_navigation/c.dart';
import 'package:blog/pages/curved_navigation/d.dart';
import 'package:blog/pages/curved_navigation/e.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainCurvedNavigationbar29()));
}

class MainCurvedNavigationbar29 extends StatefulWidget {
  const MainCurvedNavigationbar29({super.key});

  @override
  State<MainCurvedNavigationbar29> createState() =>
      _MainCurvedNavigationbar29State();
}

class _MainCurvedNavigationbar29State extends State<MainCurvedNavigationbar29> {
  var _page = 0;
  final pages = [A(), B(), C(), D(), E()];
  final colorsNavigation = [
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.greenAccent, // if color fixed
        // color: colorsNavigation[_page],
        buttonBackgroundColor: Colors.white,
        // backgroundColor: Colors.blueAccent, // if color fixed
        backgroundColor: colorsNavigation[_page],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(
          milliseconds: 600,
        ),
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.ac_unit, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: pages[_page],
    );
  }
}
