import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/course_Details_Screen.dart';

class CourseWidget extends StatelessWidget {
  final String imgText;
  final String title;
  final String briefDescription;
  final String detailedDescription;

  const CourseWidget({
    super.key,
    required this.imgText,
    required this.title,
    required this.briefDescription,
    required this.detailedDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(imgText),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[600],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CourseDetailsScreen(
                                  imgText: imgText,
                                  title: title,
                                  detailedDescription: detailedDescription,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Implement join now logic here
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: Text(
                              "Join Now",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  briefDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(CupertinoIcons.clock_fill, color: Colors.yellow),
                        SizedBox(width: 5),
                        Text(
                          "1.49 Hrs",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.person_fill, color: Colors.yellow),
                        SizedBox(width: 5),
                        Text(
                          "30 Students",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
