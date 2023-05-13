  import 'package:blog/mainprovidersec24.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecieveData extends StatelessWidget {
  const RecieveData({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(
          providerData.value.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
