import 'package:blog/pages/tab1.dart';
import 'package:blog/pages/tab2.dart';
import 'package:blog/pages/tab3.dart';
import 'package:blog/pages/tab4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
                Tab(
                  icon: Icon(Icons.radio),
                ),
                Tab(
                  icon: Icon(Icons.add_alarm),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Tab1(),
              Tab2(),
              Tab3(),
              Tab4(),
            ],
          ),
        ),
      ),
    );
  }
}
