import 'package:flutter/material.dart';

void main() {
  runApp(Main3AlertDialog28());
}

class Main3AlertDialog28 extends StatelessWidget {
  const Main3AlertDialog28({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modal Bootom Sheet',
      theme: ThemeData(primarySwatch: Colors.green),
      home: My3AlertDialog(),
    );
  }
}

class My3AlertDialog extends StatefulWidget {
  const My3AlertDialog({super.key});

  @override
  State<My3AlertDialog> createState() => _My3AlertDialogState();
}

class _My3AlertDialogState extends State<My3AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // Scaffold(
          //   body: Center(
          // Expanded use for padding
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert"),
                        content: Text("This is alert"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                // print("object");
                                Navigator.pop(context);
                              },
                              child: Text("OK"))
                        ],
                      );
                    });
              },
              child: Text('Alert'),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("object");
              },
              child: Text("Text Button"),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                print("object");
              },
              child: Text("Outlined Button"),
            ),
          ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
