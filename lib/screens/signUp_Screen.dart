import 'package:black/screens/home_Screen.dart';
import 'package:black/screens/logIn_Screen.dart';
import 'package:black/screens/signUp_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/text_field_input.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: deviceHeight(context) / 10),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/file.png',
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Create your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: deviceWidth(context) - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 60),
                            width: deviceWidth(context),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TextField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.person,
                              color: Colors.yellow,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: deviceWidth(context) - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 60),
                            width: deviceWidth(context),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TextField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.envelope,
                              color: Colors.yellow,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: deviceWidth(context) - 40,
                    height: 100,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 60),
                            width: deviceWidth(context),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TextField(
                              obscureText: true,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.lock,
                              color: Colors.yellow,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Oxanium',
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "I have an account",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
