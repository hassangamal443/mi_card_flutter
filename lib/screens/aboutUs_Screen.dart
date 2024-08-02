import 'package:black/screens/team_Screen.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/animated_Divider.dart';
import '../widgets/layeredStack.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                width: deviceWidth(context),
                padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'ABOUT US',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[800]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'WE ARE A TEAM OF ELECTRONIC MARKETING SPECIALISTS WORKING IN EGYPT AND THE ARAB WORLD 10 YEARS OF EXPERIENCE IN SOFTWARE FIELD',
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
              Container(
                color: Colors.white,
                width: deviceWidth(context),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "WHO WE ARE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 20,),
                    MovingDotAnimation(),
                    SizedBox(height: 15,),
                    Text(
                      "This Is Where Science And Creativity Meet",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/about-1.jpg',
                            width: (deviceWidth(context) / 2) - 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/about-2.jpg',
                                width: (deviceWidth(context) / 2) - 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10), // Add space between the images
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/about-3.jpg',
                                width: (deviceWidth(context) / 2) - 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Are You Looking For A Creative Company That Will Devote All Its Efforts To Your Success And The Success Of Your Website? If The Answer Is Yes, Do Not Worry. We Are Here To Serve You. Qimah Tech Company Is A Wonderful Electronic Partner To Achieve The Success You Seek. Through Our Long Experience In The Field Of Electronic Marketing And Digital Solutions, We Guarantee That You Will Work With A Team Of Professionals In The World Of The Internet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Our Company Is One Of The Best Leading Companies In The Field Of Website Development And Design In Egypt And The Arab World. We Have Long Experience In The Field Of E-Marketing, Website Hosting, And Application Programming For Android, IPhone, And ERP Systems",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>const TeamScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'The Team',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.code, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Software experts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "We have more than 10 years of experience in the field of website and software design",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.people_alt_rounded, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Technical Support",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "We provide you with real technical support available 24 hours a day",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.lightbulb, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Ideas and solutions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "We provide you with ideas and help you start a professional website",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.visibility_off, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Our vision",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Our vision is to provide professional services to our customers, and to work on continuous development of our capabilities and capabilities, to achieve our mission of executing our projects with perfection.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.message, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Our message",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Implement the project comprehensively and be able to see the customer in the new website or marketing services you provide sufficiently with the rules of marketing and consumer behavior.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                      width: (deviceWidth(context)-30),
                      child: Column(
                        children: [
                          LayeredStack(child: Icon(Icons.flag_circle, color: Colors.white, size: 40,)),
                          SizedBox(height: 20,),
                          Text(
                            "Our goals",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Our goals are to gain the trust of our customers through their satisfaction with our services that we provide to them with love, and then the circle of our customers expands day after day and we are always at the forefront.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        )
    );
  }
}
