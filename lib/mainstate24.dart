import 'package:flutter/material.dart';

void main() {
  runApp(const MainState24());
}

// state management
class MainState24 extends StatelessWidget {
  const MainState24({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainState24App(),
    );
  }
}

class MainState24App extends StatefulWidget {
  const MainState24App({super.key});

  @override
  State<MainState24App> createState() => _MainState24AppState();
}

class _MainState24AppState extends State<MainState24App> {
  int value = 0;
  Increment() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: () {
                  Increment();
                },
                child: Text('Hey bro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
