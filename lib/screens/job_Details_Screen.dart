import 'package:black/screens/recruitment_Form_Screen.dart';
import 'package:black/widgets/myScaffold2.dart';
import 'package:flutter/material.dart';
import '../widgets/animated_Divider.dart';

class JobDetailsScreen extends StatelessWidget {
  final String jobTitle;
  final String jobSummary;
  final String jobSpecifications;

  const JobDetailsScreen({
    Key? key,
    required this.jobTitle,
    required this.jobSummary,
    required this.jobSpecifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Job Summary",
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
                jobSummary,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Job Specifications and Conditions",
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
                jobSpecifications,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Please Fill Out The Following Form",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                ),
              ),
              SizedBox(height: 20,),
              MovingDotAnimation(),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecruitmentFormScreen(jobTitle: jobTitle),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Fill Out The Recruitment Form',
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
    );
  }
}
