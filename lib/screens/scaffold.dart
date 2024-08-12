import 'dart:developer';
import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/screens/business_Screen.dart';
import 'package:black/screens/chatScreen.dart';
import 'package:black/screens/contact_Us_Screen.dart';
import 'package:black/screens/jobs_Screen.dart';
import 'package:black/screens/logIn_Screen.dart';
import 'package:black/screens/our_Articles_Screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import '../screens/home_Screen.dart';

class Scaffold3 extends StatefulWidget {
  const Scaffold3({super.key});

  @override
  State<Scaffold3> createState() => _Scaffold3State();
}

class _Scaffold3State extends State<Scaffold3> {
  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    HomeScreen(),
    OurArticlesScreen(),
    JobsScreen(),
  ];
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const Scaffold3()));
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
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        /// Provide NotchBottomBarController
        notchBottomBarController: _controller,
        color: Colors.black,
        showLabel: false,
        shadowElevation: 2,
        kBottomRadius: 28.0,
        // notchShader: const SweepGradient(
        //   startAngle: 0,
        //   endAngle: pi / 2,
        //   colors: [Colors.red, Colors.green, Colors.orange],
        //   tileMode: TileMode.mirror,
        // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
        notchColor: Colors.yellow,

        /// restart app if you change removeMargins
        removeMargins: false,
        bottomBarWidth: 500,
        showShadow: true,
        durationInMilliSeconds: 300,
        elevation: 1,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.home,
              color: Colors.black,
            ),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.newspaper,
              color: Colors.black,
            ),
            itemLabel: 'Features',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.work,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.work,
              color: Colors.black,
            ),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          /// perform action on tab change and to update pages you can update pages without pages
          log('current selected index $index');
          _pageController.jumpToPage(index);
        },
        kIconSize: 24.0,
      )
          : null,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
    );
  }
}
