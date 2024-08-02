import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/screens/courses_Screen.dart';
import 'package:black/screens/service_Screen.dart';
import 'package:black/widgets/layeredStack.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/widgets.dart';
import '../widgets/animated_Divider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  bool isReversed = false;
  bool isYellowVisible = true;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          AnimateGradient(
            primaryColors: [
              Colors.black,
              Colors.grey[800]!,
            ],
            secondaryColors: [
              Colors.grey[800]!,
              Colors.black,
            ],
            duration: Duration(seconds: 6), // Adjust the duration as needed
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Our Founding Year Was Not Ordinary For Us",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "You Will Find Us Behind You Like Your Shadow",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Do You Need An Innovative Marketing Strategy?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      "Do You Want To Fully Comprehend The Concepts Of Marketing?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      "If So, We Are Here To Provide You With Just That.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.yellow, width: 1),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const AboutUsScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Text(
                            'GET TO KNOW US',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Oxanium',
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => ServicesScreen(
                  title: "Mobile Application",
                  description: "Software Designed To Run On Mobile Devices Such As Smartphones And Tablets",
                  container1: Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "APPLICATION DESIGN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10,),
                        MovingDotAnimation(),
                        SizedBox(height: 20,),
                        Text(
                          "If Your Goal Is To Have An Application For Your Business, Then Surely Designing Mobile Applications With Us At Al-Alamiya Al-Hurra Will Be Your Way To Achieve Your Goal And Increase Your Sales. We Provide Innovative Solutions And Are Pioneers In Providing Mobile Application Design Services On Various Platforms: Google Play, Apple Store And Huawei, Professionally And According To Modern Standards. This Is Because Designing Mobile Applications Has Become The Ideal Investment For The Future.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Image.asset('assets/App monetization-pana.png'),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 170,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get Started',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Oxanium',
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  container2: Container(
                    color: Colors.grey[50],
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "THE BENEFITS YOU GET WHEN DESIGNING MOBILE APPLICATIONS WITH GLOBAL FREE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10,),
                        MovingDotAnimation(),
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                              boxShadow: [const BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                              ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Hosting",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "We utilize the latest technologies to ensure smooth application performance and high responsiveness. We provide a secure hosting environment with advanced security measures to protect our client's data.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                            ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow,width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Mobile App Design",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "We utilize the latest technologies and tools in app development to ensure superior performance and responsiveness. We aim to provide an exceptional user experience through user-friendly interfaces.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                            ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow,width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Technical Support Services",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "We provide round-the-clock technical support with a team of qualified professionals available 24/7 throughout the week. Our team is here to answer your queries and help you efficiently resolve any issues..",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                            ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow,width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Mobile App Development",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Mobile app development is a sophisticated technological field encompassing various technologies and tools. At Al Almiya Al Hura, we always strive to keep pace.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                            ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow,width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Writing appropriate content",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "We ensure writing content that adapts to different screen sizes and tablet devices is an important element in mobile app development to ensure a good user experience across various devices.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                            ),],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.yellow,width: 1),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Text(
                                      '6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Electronic Payment Service",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Electronic payment service plays a crucial role in developing mobile applications, whether for e-commerce or any other application requiring payment processing. Therefore.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  container3: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "MOBILE APP DESIGN IS DIVIDED INTO",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10,),
                        MovingDotAnimation(),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Text(
                              "Android Operating System",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "We Fully Know Google Play's Specific Conditions For Accepting Applications On The Store And Ensuring Their Continued Existence. In Addition, We Are Keen To Keep Abreast Of All Programming Language Updates And Measure Their Efficiency And Application Acceptance Conditions To Ensure That The Application Is Developed With All Updates.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Text(
                              "IOS Operating System",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "It Is Known That Apple's Updates Are Permanent And Continuous, Which Is Precisely What We Are Keen To Keep Pace With While Using Mobile App Design For The IPhone. We Use Flexible Languages And Technologies So That They Are Updatable, That The App Does Not Disappear From The App Store, And That We Can Develop It Easily.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        Image.asset('assets/os.png'),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Text(
                              "Cross-Platform",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "It Is A System That Allows Developers To Seamlessly Build An Application Compatible With Several Major Operating Systems, Such As Android And IOS, Where Developers Write The Code Once And Then Reuse It, Making It Possible To Release A Product Quickly And With The Highest Quality.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get Service Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Oxanium',
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  container4: Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "THE PROGRAMMING LANGUAGES USED IN THE ANDROID SYSTEM ARE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10,),
                        MovingDotAnimation(),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Text(
                                "Java Language Used In Mobile App DesignIn Mobile App Design",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "The Java Language Is Considered One Of The Most Powerful And Oldest Programming Languages, And It Is Also An Excellent Environment For Developing Mobile Applications On All Platforms. For The Design Of Android Applications, Java Is A Very Simple Way To Design Mobile Applications Professionally.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Text(
                              "Kotlin Language",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "It Is Also One Of The Most Powerful Programming Languages That Has Become Available In Recent Times, Thanks To The Advantages It Has Provided, The Most Important Of Which Is Solving Many Of The Restrictions That Existed In The Java Language. That Made Google Adopt It As The Official Language For Developing Android Applications.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Image.asset('assets/Programming-amico.png'),
                        SizedBox(height: 10,),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Text(
                                "XML Language Used In Mobile App Design",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "It Is Known As “Extensible Markup Language”. This Language Allows Us To Store And Define Data In A Shareable Way, Enabling Us To Exchange Information Between Different Computer Systems, Such As Databases, Third-Party Websites, And Applications.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get Service Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Oxanium',
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          "LANGUAGES USED",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10,),
                        MovingDotAnimation(),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/flr.webp'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/php.jpg'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/sql.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
              )));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              width: (deviceWidth(context)-30),
              child: Column(
                children: [
                  LayeredStack(child: Icon(Icons.phone_iphone, color: Colors.white, size: 40,)),
                  SizedBox(height: 20,),
                  Text(
                    "Mobile Application",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Software Designed To Run On Mobile Devices Such As Smartphones And Tablets",
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
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              width: (deviceWidth(context)-30),
              child: Column(
                children: [
                  LayeredStack(child: Icon(Icons.people_sharp, color: Colors.white, size: 40,)),
                  SizedBox(height: 20,),
                  Text(
                    "Celebrity Account Management",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "We Follow All Events And Developments In Your Accounts, And Deal With Them Profissionally.\nImplementaion Of What Is Required Modifications",
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
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => ServicesScreen(
                title: "UI UX DESIGNER",
                description: "DESIGN YOUR WEBSITE BY-INCREASE ENGAGEMENT-BOOST CONVERSIONS-DRIVE REVENUE -MINIMIZE RISK.",
                container1: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "DESIGN SERVICES PROVIDED BY INTERNATIONAL FREE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Business identity design",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Shine and stand out with a unique style! Brand identity design service adds personality and meaning to your brand. We will build you an authentic logo and choose colors and fonts that express the spirit of your business.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Social media designs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Build your social media presence in a unique style! The social media design service provides you with attractive and distinctive content to share on social media platforms.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/wordpress.jpg'),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Graphic Design",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Creativity without limits! Graphic design service provides you with exceptional designs that attract attention. Whether you need brochures, posters or social media designs.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Motion graphics",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Make your messages move and catch attention! Motion graphics service combines creativity and technology to create unique animated videos. We help you transform your stories and products into short films.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                container2: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "GRAPHIC DESIGN SERVICE PROVIDED BY INTERNATIONAL FREE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "Graphic Design Is A Visual Language That Tells A Story About Your Brand And Products That Catches The Eye And Leaves A Strong Statement. In The World For Free, We Offer Graphic Design Service To Help You Become A Visual Force That Cannot Be Ignored.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "What Our Graphic Design Services Include:",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Marketing Materials Design: We Will Design Marketing Materials Such As Brochures, Flyers, Banners, And Posters That Contribute To Promoting Your Products And Services.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Publication Design: If You Need Designs For Publications Such As Books, Magazines Or Posters, We Will Produce Attractive And Modern Designs.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Image.asset('assets/o.jpg'),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Logos Design: We Will Help You Create A Unique Logo That Distinguishes You From Competitors And Represents Your Business Identity.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Design Ads And Social Media Posts: We Will Design Attractive Ads And Social Media Content To Increase The Engagement Of Your Followers And Attract New Customers.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Service Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                container3: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "BUSINESS IDENTITY DESIGN SERVICE PROVIDED BY AL-ALAMIAH AL-HURRA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Logo design",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We will create a unique and attractive logo that reflects the spirit and values of your brand. It will be carefully designed to be distinctive and easy to recognize.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Choose colors and fonts",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We will determine the color palette and fonts that suit your business identity and contribute to its enhancement.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/ps.webp'),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Marketing materials design",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We will design marketing materials such as brochures, posters, and other advertising materials to help promote your brand.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Counseling and support",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We provide professional advice and ongoing support to ensure the sustainability and development of your business identity.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                container4: Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "BUSINESS IDENTITY DESIGN SERVICE PROVIDED BY AL-ALAMIAH AL-HURRA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "Motion Graphic Design Is One Of The Most Powerful Means Of Visual Communication In The Digital Age. At Al-Alamiya Al-Hurra, We Provide A Motion Graphic Design Service To Make Your Brand And Content Move Elegantly And Creatively.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "What Does Our Motion Graphic Design Service Include:",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Logo Animation: We Will Create An Innovative Animation For Your Brand Logo That Will Attract Attention And Enhance Your Identity.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Video Intros: We Will Design Stunning Motion Graphic Intros That Add A Professional Look To Your Online Visual Content.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Image.asset('assets/12.webp'),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Animated Ads: We Will Create Motion Graphic Ads That Promote Your Products Or Services In An Innovative And Attractive Style.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Motion Graphics For Websites And Applications: We Will Enhance The Experience Of Users Of Your Website Or Application By Designing Motion Graphics That Interact In A Distinctive Way.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Service Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "TOOLS USED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/Canva.png'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/i.png'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/ps.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/testimonial_figma-.png'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/maxresdefault.jpg'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              width: (deviceWidth(context)-30),
              child: Column(
                children: [
                  LayeredStack(child: Icon(Icons.color_lens, color: Colors.white, size: 40,)),
                  SizedBox(height: 20,),
                  Text(
                    "Ui Ux Designer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Design Your Website By -Increase Engagement -Boost Conversions -Drive Revenue -Minimize Risk.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => ServicesScreen(
                title: "E-MARKETING",
                description: "EVERY COMPANY IN THE WORLD REQUIRES AN EFFECTIVE MARKETING STRATEGY TO INCREASE BRAND AWARENESS AND ATTRACT NEW CUSTOMERS FOR ITS PRODUCTS AND SERVICES",
                container1: Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "DIGITAL MARKETING",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "Discover The Power Of Digital Marketing With Our Innovative Service. We Offer A Comprehensive Solution To Increase Your Online Visibility And Enhance The Success Of Your Business. With Digital Marketing, You Can Reach A Wider Audience, Increase Sales, And Boost Your Brand.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 170,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                container2: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "DIGITAL MARKETING SERVICES PROVIDED BY ALALMIYA ALHURA COMPANY",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Search Engine Optimization",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Get ready to climb to the top of search engine results with our exceptional SEO service. We provide a comprehensive strategy.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Paid Advertising",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Make your online presence shine and grow effectively with our paid advertising service. We offer an innovative solution.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/mmmmmm.png'),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Social Media",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Discover the infinite power of communication and influence on social media platforms with our outstanding service.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "App Store Optimization",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Make your app shine in the world of mobile applications with our excellent ASO service. We offer a customized strategy.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                container3: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "CONVERSION RATE OPTIMIZATION (CRO) SERVICE PROVIDED BY ALALMIYA ALHURA FREE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "The Conversion Rate Optimization (CRO) Service Offered By ALAlmiya ALhura Is An Essential Part Of Digital Marketing Strategies And Website Development. Here Are Some Reasons That Make It Important:",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              " Improved User Experience: By Enhancing Website Design And Usability, You Can Improve The User Experience, Making It More Engaging And Increasing The Likelihood Of Converting Visitors Into Customers.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              " Leveraging Data And Analytics: CRO Service Relies On Data Analysis To Understand Visitor Behavior On Your Website. This Can Help Make Better Decisions Based On Data.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Image.asset('assets/i2.webp'),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Experiment Testing: A/B Testing And Multivariate Testing Techniques Can Be Used To Test Different Website Elements And Marketing Strategies To Determine What Works Best And Increase The Conversion Rate.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Streamlining Processes: CRO Service Works On Simplifying And Improving The Processes That Visitors Must Complete, Increasing The Likelihood Of Successful Conversions.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Service Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                container4: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "FREQUENTLY ASKED QUESTIONS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Container(
                        width: deviceWidth(context)-40,
                        child: ExpansionTile(
                          title: Text(
                            "How to Improve Search Engines?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: deviceWidth(context)-40,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Search engines can be improved by focusing on the following: Keywords: Use appropriate keywords in the content, titles, and descriptions, and avoid using similar or alternative words - Internal links: Use internal links in the content to facilitate site navigation and link different pages together - Technical improvements: Use technical improvement techniques such as improving loading speed and user experience, which also depends on UI UX design services - Online marketing: Use digital marketing and promotion to increase the number of visits and improve search engine rankings",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth(context)-40,
                        child: ExpansionTile(
                          title: Text(
                            "How to Make Your Website Top the First Search Results in Google?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: deviceWidth(context)-40,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "To make your website top the first search results in Google, follow these basic practices: Use appropriate keywords in the content, titles, and descriptions - Get high-quality external links from trusted sites related to your website's domain - Improve the quality of content and provide helpful content for visitors - Improve user experience, including loading speed and attractive and easy-to-use website design. In addition, paid advertising and digital marketing can be used to increase traffic and reach a wider audience.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth(context)-40,
                        child: ExpansionTile(
                          title: Text(
                            "What is the Importance of Search Engine Optimization (SEO)?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: deviceWidth(context)-40,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Improving search engines is the process of improving a website to increase its visibility in search engine results. The importance of SEO can be summarized as follows: Increase traffic to the website and the number of visits from search engines - Improve the website's status and increase trust among potential visitors and customers - Increase conversion rates and sales by attracting more potential customers to the website - Enhance the relationship between the website, customers, and visitors, and increase awareness of the brand and company.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth(context)-40,
                        child: ExpansionTile(
                          title: Text(
                            "What are Sponsored Ads?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: deviceWidth(context)-40,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Sponsored ads are a type of digital advertising that involves paying a fee to display them on social media networks, search engines, and other digital platforms. These ads are typically targeted to users based on various factors such as location, age, interests, and previous behaviors. Sponsored ads are an effective way to reach a wider audience and increase engagement with the advertising content. They are an essential part of the digital marketing strategy for many companies and organizations.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth(context)-40,
                        child: ExpansionTile(
                          title: Text(
                            "What is the Importance of Writing Content for My Business?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                width: deviceWidth(context)-40,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Writing content for the industry has many benefits, including: Attracting the attention of potential customers and improving brand awareness and brand identity * Building trust between customers and the company and establishing long-term relationships - Improving the company's search engines and increasing access to the targeted audience. In addition, writing commercial content can improve the company's image and increase the brand's positive perception. It also helps achieve digital marketing goals and increase sales and economic growth.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              width: (deviceWidth(context)-30),
              child: Column(
                children: [
                  LayeredStack(child: Icon(Icons.insert_chart_sharp, color: Colors.white, size: 40,)),
                  SizedBox(height: 20,),
                  Text(
                    "E-Marketing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Every Country In The World Requires An Effective Marketing Strategy To Increase Brand Awareness And Attract New  Customer For Its Products And Services",
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
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => ServicesScreen(
                title: "WEB DEVELOPMENT",
                description: "CUSTOMISED WEBSITE TO ELEVATE YOUR BUSINESS AND ESTABLISHING THE WEBSITE USING THE BASICS OF SEARCH ENGINE OPTIMIZATION .",
                container1: Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "WEB DEVELOPMENT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "Get A Distinguished Website That Meets Your Needs And Grows Your Business With ALAlmiya ALhura Web Design Service. Whether You Run An Online Store, A Restaurant, An Agency, Or Anything Else, We Will Work With You Hand In Hand To Achieve Your Brand's Vision And Online Success Through A Responsive Website That Works Smoothly On All Devices And An Attractive Design That Captures The Attention Of Your Visitors.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Image.asset('assets/Developmen.png'),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 170,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                container2: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "SERVICES OFFERED BY ALALMYIA ALHURA FOR WEB DESIGN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Modern Programming Languages",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We use the latest advanced programming languages that allow you to effortlessly modify your website with flexibility and speed.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Brand-Fitting Website",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We will design a website that aligns with your brand and reflects the desires and needs of your customers.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Reliable Hosting",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We offer hosting services that match your pricing plan and requirements, ensuring smooth and stable performance for your website.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(5, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.yellow,width: 1),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "Unique and Engaging Content",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "We provide compelling content that captures readers' attention and motivates them to continue browsing your website.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                container3: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "WHY CHOOSE ALALMYIA ALHURA FOR YOUR WEB DESIGN?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                          SizedBox(width: 10,),
                          Text(
                            "Professional Team",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Alalmyia Alhura Has An Exceptional Team Of Experienced Professionals In Website Design. We'll Help You Create A Website With A Unique Design And Modern, Distinctive Colors That Reflect Your Business Identity.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                          SizedBox(width: 10,),
                          Text(
                            "E-Commerce Store Design",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "With ALalmyia ALhura's Website Design Service, You Can Get A Professional E-Commerce Store To Showcase All Your Products, Prices, Order Details, And Shipping Information To Your Customers.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Image.asset('assets/Website Creator-amico.png'),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                          SizedBox(width: 10,),
                          Text(
                            "Dynamic Web Design",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Free Global Relies On The Latest Web Programming Techniques In Website Design To Enable Our Clients To Create A Fast, User-Friendly, Easily Adaptable Website Optimized For Search Engines.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                          SizedBox(width: 10,),
                          Text(
                            "Social Media Integration",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "We Help You Create A Website Connected To Your Business's Social Media Accounts, Displaying Icons For Those Accounts In The Website Design.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Service Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                container4: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "THE IMPORTANCE OF WEB DESIGN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Text(
                        "Website Design Is A Critical Element In The Current Business And Digital Communication Landscape. It's Not Just An Online Interface; It's A Strategic Tool That Plays A Fundamental Role In Business Success And The Achievement Of Various Goals. Here Are Some Points Highlighting The Importance Of Website Design:",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "It Is The Perfect Investment For Your Business.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "It Is The Perfect Investment For Your Business.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Brings More Customers To Your Business.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "IDevelops Your Business And Keep Up With Technology.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/Web devices-amico.png'),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Marketing Your Products On A Freeway.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "The Ability To Display The Site In More Than One Language.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Increases The Target Audience Segment.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(CupertinoIcons.check_mark_circled, color: Colors.yellow),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Increases Your Customers' Trust.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Read More',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Oxanium',
                                  fontSize: 17,
                                ),
                              ),
                              Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "LANGUAGES USED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(height: 10,),
                      MovingDotAnimation(),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/html.png'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/css.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/js.webp'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/react.js-img.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )));
            },
            child: Container(
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
                    "Web Development",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Customised Website To Elevate Your Business And Establishing The Website Using The Basics Of Search Engine Optimization.",
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
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              width: (deviceWidth(context)-30),
              child: Column(
                children: [
                  LayeredStack(child: Icon(Icons.camera_alt, color: Colors.white, size: 40,)),
                  SizedBox(height: 20,),
                  Text(
                    "Advertisement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Advertising Is Part Of A Multi-Component Activity, Namely Promotional Activity. It Is Known That Advertising Often Outperforms.",
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
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.grey[50],
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
                  "Our Founding Year Was Not Ordinary For Us",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "This Is Where Science And Creativity Meet",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w300,
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
                Row(
                  children: [
                    Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                    SizedBox(width: 5,),
                    Text(
                      "Do You Need An Innovative Marketing Strategy?",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                    SizedBox(width: 5,),
                    Text(
                      "Do You Want To Fully Comprehend The Concepts Of Marketing?",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.check_mark_circled,color: Colors.yellow,),
                    SizedBox(width: 5,),
                    Text(
                      "UIf So, We Are Here To Provide You With Just That.",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const AboutUsScreen()));
                  },
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Read More',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Oxanium',
                            fontSize: 17,
                          ),
                        ),
                        Icon(CupertinoIcons.arrow_right,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: deviceWidth(context),
            child: Column(
              children: [
                Text(
                  "WHY CHOOSE US",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Our Founding Year Was Not Ordinary For Us",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10,),
                MovingDotAnimation(),
                SizedBox(height: 20,),
                Container(
                  width: deviceWidth(context),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 70,
                              height: 70,
                              child: Center(
                                child: Image.asset('assets/medals.png', width: 40,), // Place the required child here
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Quality",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "We are committed to achieving the highest levels of quality in all the services and products we offer to our customers, thanks to our experience and specialized team.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 70,
                              height: 70,
                              child: Center(
                                child: Image.asset('assets/dashboard.png', width: 40,), // Place the required child here
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Speed",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "We strongly believe in the power of technology to enhance businesses, which is why we provide fast and efficient services to meet our customers' needs instantly.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/counts-img.jpg', width: deviceWidth(context)-40,),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 70,
                              height: 70,
                              child: Center(
                                child: Image.asset('assets/padlock.png', width: 40,), // Place the required child here
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Security",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "We are dedicated to providing innovative technology that safeguards our clients' information with the utmost security. Join us on a technological excellence journey where innovation meets security.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 70,
                              height: 70,
                              child: Center(
                                child: Image.asset('assets/phone-call (3).png', width: 40,), // Place the required child here
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Technical Support",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              "Refers to technical support or customer service that is available 24 hours a day, 7 days a week, without interruption.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: deviceWidth(context),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Image.asset(
                      'assets/Courses.png',
                      width: constraints.maxWidth,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        color: Colors.yellow.withOpacity(0.5),
                        child: Column(
                          children: [
                            Text(
                              "Black Courses",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Gain New Skills With Just One Subscription To The Most Important Technical Courses In The Field Of Programming, Marketing, And Graphics To Develop Your Business And Services On The Internet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) =>const CoursesScreen()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'All Courses',
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
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: deviceWidth(context),
            child: Column(
              children: [
                Text(
                  "OUR WORKING PROCESS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "How will our services help you develop your business?",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10,),
                MovingDotAnimation(),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: (deviceWidth(context)/2)-20,
                      height: deviceHeight(context)/2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/compass-circular-tool.png', // Replace with your image path
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.yellow,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Discovery',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'We have a team specialized in understanding your ideas and suggestions and helping you develop these ideas.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: (deviceWidth(context)/2)-20,
                      height: deviceHeight(context)/2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/play.png', // Replace with your image path
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.yellow,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Planning',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The project is studied, full planning is done, and an analytical file is prepared before work and implementation begin.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: (deviceWidth(context)/2)-20,
                      height: deviceHeight(context)/2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/implementation.png', // Replace with your image path
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.yellow,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Implementation',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'We can implement your project with ease, as we have a specialized work team with high experience in implementation.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: (deviceWidth(context)/2)-20,
                      height: deviceHeight(context)/2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/cargo-truck.png', // Replace with your image path
                                height: 50,
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.yellow,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Your project is delivered professionally and a full trial and test is conducted before delivery to ensure the success of the project without mistakes.',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
    ),
    );
  }
}
