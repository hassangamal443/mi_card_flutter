import 'package:black/widgets/job_Widget.dart';
import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aboutUs_Screen.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
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
                      'JOBS',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[800]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "BLACK 90'S RECRUITMENT ADS – BE PART OF US",
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
              JobWidget(
                  title: "Front-end Developer",
                  description: "A front-end developer is responsible for designing and developing websites that users interact with directly",
                  jobSummary: "A Front-End Developer Is Responsible For Designing And Developing Websites That Users Interact With Directly",
                  jobSpecifications: "• Experience In Front-End Development For 2-3 Years.\n"
                      "• Experience In Designing And Developing Websites.\n"
                      "• Experience With Frameworks Such As React.Js, Angular.Js, Or Vue.Js.\n"
                      "• Mastering User Interface Design And Development Techniques.\n"
                      "• Experience Using Tools Such As Npm, Webpack, And Babel.\n"
                      "• Work Collaboratively With Back-End Teams To Ensure Seamless Integration Between Front-End And Back-End.\n",
              ),
              JobWidget(
                title: "Back-End Developer",
                description: "Responsible for the design, development and maintenance of applications and databases",
                jobSummary: "Responsible For The Design, Development And Maintenance Of Applications And Databases",
                jobSpecifications: "• Proficiency In Core Programming Languages ​​Such As Python, Ruby, PHP, Java, .NET, And Node.Js.\n"
                    "• Proficient In Designing And Managing Databases Such As MySQL, PostgreSQL, MongoDB, And SQL Server.\n"
                    "• Knowledge Of Operating And Managing Servers Such As Apache, Nginx.\n"
                    "• Ability To Analyze Problems And Find Effective Solutions.\n"
                    "• Collaborate With Different Business Teams (Front-End Developers, UX/UI Designers, And Project Managers) To Ensure Processes Are Aligned.\n"
                    "• Good Understanding Of Web Security And Data Protection Concepts.",
              ),
              JobWidget(
                title: "E-Marketing",
                description: "Develop and implement marketing strategies to attract customers And increase sale",
                jobSummary: "Develop And Implement Marketing Strategies To Attract Customers And Increase Sale",
                jobSpecifications: "• Practical Experience In The Field Of E-Marketing (Usually Between 1-3 Years).\n"
                    "• Strong Skills In Using Digital Marketing Tools Such As Google Analytics, Google Ads, And Social Media.\n"
                    "• Good Understanding Of Managing And Developing Online Advertising Campaigns.\n"
                    "• Experience Using Email Marketing Platforms (Eg Mailchimp).\n"
                    "• Good Knowledge Of Graphic Design (Experience With Design Tools Such As Adobe Photoshop Or Illustrator Is Preferred).\n"
                    "• Ability To Analyze And Interpret Data To Make Informed Marketing Decisions.\n"
                    "• Experience In Preparing Performance Reports For Marketing Campaigns And Providing Recommendations For Improvement.\n",
              ),
              JobWidget(
                title: "Designer (UI/UX)",
                description: "He is responsible for designing and developing digital interfaces",
                jobSummary: "He Is Responsible For Designing And Developing Digital Interfaces",
                jobSpecifications: "• At Least 3-5 Years Of Experience In User Interface And User Experience Design.\n"
                    "• Portfolio Showing Previous Projects And Completed Work.\n"
                    "• Proficiency In Using Design Software Such As Adobe XD, Sketch, Figma, Photoshop, And Illustrator.\n"
                    "• The Ability To Create And Use Personas, User Scenarios, And User Journeys.\n"
                    "• Ability To Solve Problems And Provide Innovative Design Solutions Based On Careful Analysis Of User Needs.\n"
                    "• Ability To Work Under Pressure And Manage Time Effectively To Meet Deadlines.\n"
                    "• Good Understanding Of The User Experience Design Process, Including Research, Analysis, Prototype, And Testing.",
              ),
              JobWidget(
                title: "Flutter Developer",
                description: "Distinguished in designing and developing application solutions",
                jobSummary: "Distinguished In Designing And Developing Application Solutions",
                jobSpecifications: "• At Least Two Years Of Practical Experience In Developing Flutter Applications.\n"
                    "• Deep Knowledge Of The Dart Programming Language.\n"
                    "• Experience In Developing Android And IOS Applications.\n"
                    "• Strong Experience In Developing Applications Using The Flutter Framework.\n"
                    "• Experience With Cloud Tools Such As Firebase.\n"
                    "• Experience Using State Management Tools Such As Provider, Bloc, Or Riverpod.",
              ),
            ],
          ),
        )
    );
  }
}
