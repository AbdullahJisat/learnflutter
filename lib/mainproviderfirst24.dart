// import 'package:blog/HomePagebarbutton5.dart';
import 'package:blog/mainprovidersec24.dart';
import 'package:blog/recieveprovider24.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => Data(), child: MainProviderFirst24()));

// state management
class MainProviderFirst24 extends StatelessWidget {
  const MainProviderFirst24({super.key});

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
