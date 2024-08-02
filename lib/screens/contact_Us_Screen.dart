import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_Divider.dart';
import '../widgets/text_field_input.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                width: MediaQuery.of(context).size.width, // replace deviceWidth(context)
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "CONTACT US",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "ALL OF BLACK 90'S CONTACTS INFORMATION",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "CONTACT US",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(20),
                width: deviceWidth(context),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Icon(Icons.location_on_sharp, color: Colors.black, size: 40),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded( // Add this
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Fifth Settlement. New Cairo 3 90th Street 11835",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.clip, // Add this
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: deviceWidth(context),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Icon(Icons.email, color: Colors.black, size: 40),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded( // Add this
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "info@black90.marketing",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.clip, // Add this
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: deviceWidth(context),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Icon(Icons.phone, color: Colors.black, size: 40),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded( // Add this
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "01000086848",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.clip, // Add this
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              TextFieldInput(
                hintText: 'Your Name',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              TextFieldInput(
                hintText: 'Your Email',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              TextFieldInput(
                hintText: 'Subject',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              TextField(
                cursorColor: Colors.white,
                maxLines: null, // Allows the TextField to expand
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "Message",
                    hintStyle: TextStyle(
                        color: Colors.grey[600]
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  // Handle form submission
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Send Message',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Oxanium',
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
