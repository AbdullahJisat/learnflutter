import 'package:flutter/material.dart';

void main() {
  runApp(MainCustomDialog30());
}

class MainCustomDialog30 extends StatelessWidget {
  const MainCustomDialog30({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Dialog",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CustomDialog(),
    );
  }
}

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() => {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 250,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text(
                                      "Alert Dialog",
                                      style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 23,
                                        color: Color(0xff070707),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat optio voluptatibus iste officiis magnam est impedit labore dicta corporis eos?",
                                      style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontSize: 14,
                                        color: Color(0xff070707),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Image.asset("images/demo.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    })
              }),
          child: Text("click"),
        ),
      ),
    );
  }
}
