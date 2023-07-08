import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  @override
  File? _image;

  Future cameraImage() async {
    var image = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image.path);
    });
  }

  Future galleryImage() async {
    var image = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child: _image != null
                ? Image.file(File(_image!.path))
                : Center(child: Text("no image selected")),
          ),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FloatingActionButton(
              onPressed: () {
                cameraImage();
              },
              child: Icon(Icons.camera),
            ),
            FloatingActionButton(
              onPressed: () {
                galleryImage();
              },
              child: Icon(Icons.camera),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.photo_library),
            ),
          ])
        ],
      ),
    );
  }
}
