import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/screens/our_Articles_Screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_Screen.dart';

class MyScaffold2 extends StatelessWidget {
  final Widget body;

  MyScaffold2({required this.body});

  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: deviceHeight(context)/10,
        title: Image.asset(
          'assets/file.png',
          width: 80,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: body,
    );
  }
}
