import 'package:flutter/material.dart';

void main() {
  runApp(const MainListtile11());
}

class MainListtile11 extends StatelessWidget {
  const MainListtile11({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              title: Text("Easy"),
              subtitle: Text("Easy Sub"),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text("Easy 1"),
              subtitle: Text("Easy Sub"),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text("Easy 2"),
              subtitle: Text("Easy Sub"),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: Icon(Icons.add_a_photo),
            ),
          ],
        ),
      ),
    );
  }
}
