import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

void main() =>
    runApp(ChangeNotifierProvider(create: (context) => Data(), child: MyApp()));

// state management
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
//  provider setup
    final providerData = Provider.of<Data>(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                providerData.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
              // response dont get for not use notifyListener in mainprovidersecon24
              ElevatedButton(
                onPressed: () {
                  providerData.Increment();
                },
                child: Text('Hey bro'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RecieveData()));
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
