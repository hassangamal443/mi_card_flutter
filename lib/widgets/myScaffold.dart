import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/screens/business_Screen.dart';
import 'package:black/screens/chatScreen.dart';
import 'package:black/screens/contact_Us_Screen.dart';
import 'package:black/screens/jobs_Screen.dart';
import 'package:black/screens/logIn_Screen.dart';
import 'package:black/screens/our_Articles_Screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_Screen.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;

  MyScaffold({required this.body});

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
      drawer: SafeArea(
        child: Drawer(
            backgroundColor: Colors.grey[200],
            child: Container(
              margin: EdgeInsets.only(top: 20,left: 20,bottom: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [const BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                        ),]
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomeScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.home,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Home Page',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          'Black90 Main page',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const AboutUsScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.account_box_rounded,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'About Us',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          'Learn more about us',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const OurArticlesScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.document_scanner_rounded,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Our Articles',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          'Take a look at our Articles',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const JobsScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.work,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Jobs',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "Black90's recruitment ads",
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const BusinessScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.dashboard,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Our Business',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "This contains all our work",
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const ContactUsScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.contact_support_rounded,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Contact Us',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "Black90's contanct information",
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.contact_support_rounded,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Live Chat',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "We will answer your questions",
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.grey[700],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(15),
                    child: InkWell(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.settings,
                                  color: Colors.grey[700],
                                  size: 30,
                                ),
                                SizedBox(width: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      'Manage the app settings',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.grey[700],
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.login,
                              color: Colors.red[800],
                              size: 30,
                            ),
                            SizedBox(width: 15,),
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
      body: body,
    );
  }
}
