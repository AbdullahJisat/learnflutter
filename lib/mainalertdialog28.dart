import 'package:flutter/material.dart';

void main() {
  runApp(MainAlertDialog28());
}

class MainAlertDialog28 extends StatelessWidget {
  const MainAlertDialog28({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modal Bootom Sheet',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyAlertDialog(),
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: ElevatedButton(
        //   onPressed: () {
        //     showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             title: Text("Alert"),
        //             content: Text("This is alert"),
        //             actions: [
        //               ElevatedButton(
        //                   onPressed: () {
        //                     // print("object");
        //                     Navigator.pop(context);
        //                   },
        //                   child: Text("OK"))
        //             ],
        //           );
        //         });
        //   },
        //   child: Text('Alert'),
        // ),
        // child: TextButton(
        //   onPressed: () {
        //     print("object");
        //   },
        //   child: Text("Text Button"),
        // ),
        child: OutlinedButton(
          onPressed: () {
            print("object");
          },
          child: Text("Outlined Button"),
        ),
      ),
    );
  }
}
