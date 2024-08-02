import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../screens/aboutUs_Screen.dart';
import '../utils/utils.dart';

class ImagePicker1 extends StatefulWidget {
  const ImagePicker1({super.key});

  @override
  State<ImagePicker1> createState() => _ImagePicker1State();
}

class _ImagePicker1State extends State<ImagePicker1> {
  Uint8List? _image;
  String? _imageName;

  @override
  void selectImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      Uint8List im = await image.readAsBytes();
      setState(() {
        _image = im;
        _imageName = image.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'personal picture:',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: selectImage,
          child: Container(
            width: deviceWidth(context),
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Center(
              child: Text(
                _imageName ?? 'Please select your photo',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
