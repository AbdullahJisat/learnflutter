import 'package:blog/pages/imagepicker.dart';
import 'dart:io';
import 'package:flutter/material.dart';

void main() => runApp(MainImagePicker26());

class MainImagePicker26 extends StatelessWidget {
  const MainImagePicker26({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyImagePicker(),
    );
  }
}
