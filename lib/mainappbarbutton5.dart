import 'package:flutter/material.dart';

void main() {
  runApp(const MainAppBarButton5());
}

class MainAppBarButton5 extends StatelessWidget {
  const MainAppBarButton5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stock Management App"),
          centerTitle: true,
          leading: Icon(Icons.message),
          actions: [
            IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {
                  print('Working');
                })
          ],
        ),
        body: Center(
            child: Text(
          "Category Page",
          style: TextStyle(fontSize: 25),
        )),
      ),
    );
  }
}
