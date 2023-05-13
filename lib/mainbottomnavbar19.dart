import 'package:blog/pages/bottomNav1.dart';
import 'package:blog/pages/bottomNav2.dart';
import 'package:blog/pages/bottomNav3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainBottomNavbar19());
}

class MainBottomNavbar19 extends StatelessWidget {
  const MainBottomNavbar19({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  var _currentIndex = 0;

  final pages = [
    One(),
    Two(),
    Three(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false, // <-- AND HERE
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon((Icons.message)),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.call)),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: Icon((Icons.pan_tool)),
            label: "Pan Tool",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
