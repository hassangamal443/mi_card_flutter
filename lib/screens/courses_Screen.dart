import 'package:black/screens/team_Screen.dart';
import 'package:black/widgets/course_Widget.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_Divider.dart';
import 'aboutUs_Screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                width: deviceWidth(context),
                padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'COURSES',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[800]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'ALL THE COURSES YOU WANT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "List Of Courses",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "A variety of courses in all fields",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              MovingDotAnimation(),
              SizedBox(height: 40,),
              CourseWidget(
                imgText: 'assets/i.webp',
                title: 'PHP Basics Course',
                briefDescription: 'PHP Basics course: You will learn the basics and then move on to creating your own content management system',
                detailedDescription: "A Complete Course To Learn PHP From Scratch To Professionalism. This Course Is Just Amazing. You Will Learn The Basics And Then Move On To Creating Your Own Content Management System. Every Little Bit Of Code Is Described Well, So You Know Exactly What You're Doing. After Completing This Course",
              ),
              SizedBox(height: 10,),
              CourseWidget(
                imgText: 'assets/marketing.jpg',
                title: 'Electronic Marketing Course',
                briefDescription: 'E-marketing course An electronic marketing course based on practical projects',
                detailedDescription: "Marketing Courses Are A Tool For Accessing The Skills And Knowledge Necessary To Excel In The Field Of Marketing. As Our Consumption Of The Traditional Consumer Market Increases, The Need For Advanced Education That Meets Changing Market Needs.",
              ),
              SizedBox(height: 10,),
              CourseWidget(
                imgText: 'assets/55555555555.png',
                title: 'Laravel API Basics Course',
                briefDescription: 'A complete course on the basics of Laravel API from scratch to professionalism.',
                detailedDescription: "A Complete Course On The Basics Of Laravel API From Scratch To Professionalism. You Will Learn The Basics. It Is Directed To All People Interested In The Fields Of Designing Mobile Applications. You Will Learn In A Simple Way Without Complexity During Your Study Of This Excellent Course.",
              ),
            ],
          ),
        ),
    );
  }
}
