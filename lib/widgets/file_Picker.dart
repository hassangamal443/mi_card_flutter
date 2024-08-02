import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../screens/aboutUs_Screen.dart';

class FilePickerWidget extends StatefulWidget {
  const FilePickerWidget({super.key});

  @override
  State<FilePickerWidget> createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget> {
  File? _file;

  Future<void> getFile() async {
    if (Platform.isAndroid) {
      if (await Permission.storage.request().isGranted) {
        pickFile();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Storage permission is required to pick files'),
        ));
      }
    } else {
      pickFile();
    }
  }

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = File(result.files.single.path!);
      setState(() {
        _file = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CV bdf:',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            getFile();
          },
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
                _file != null ? _file!.path.split('/').last : 'Please select your file',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
