import 'package:black/screens/aboutUs_Screen.dart';
import 'package:black/widgets/myScaffold2.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  final String imgText;
  final String title;
  final String detailedDescription;

  const CourseDetailsScreen({
    super.key,
    required this.imgText,
    required this.title,
    required this.detailedDescription,
  });

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imgText),
              SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                detailedDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Join Now',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Oxanium',
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,color: Colors.black,)
                        ],
                      ),
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


