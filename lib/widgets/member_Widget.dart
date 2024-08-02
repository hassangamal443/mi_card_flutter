import 'package:flutter/material.dart';
import '../screens/mermbers_Screen.dart';

class MemberWidget extends StatelessWidget {
  final String img;
  final String name;
  final String role;
  final String summary;
  final String description;
  final String statistic1name;
  final double statistic1per;
  final String statistic2name;
  final double statistic2per;
  final String statistic3name;
  final double statistic3per;
  final String statistic4name;
  final double statistic4per;
  final String statistic5name;
  final double statistic5per;
  final String statistic6name;
  final double statistic6per;

  const MemberWidget({
    Key? key,
    required this.img,
    required this.name,
    required this.role,
    required this.summary,
    required this.description,
    required this.statistic1name,
    required this.statistic1per,
    required this.statistic2name,
    required this.statistic2per,
    required this.statistic3name,
    required this.statistic3per,
    required this.statistic4name,
    required this.statistic4per,
    required this.statistic5name,
    required this.statistic5per,
    required this.statistic6name,
    required this.statistic6per,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 20,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
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
        children: [
          Image.asset(
            img,
            width: (MediaQuery.of(context).size.width / 2) - 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  role,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  summary,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: Colors.black, thickness: 1, indent: 5, endIndent: 5),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MembersScreen(
                          img1: img,
                          name: name,
                          description: description,
                          statistic1name: statistic1name,
                          statistic1per: statistic1per,
                          statistic2name: statistic2name,
                          statistic2per: statistic2per,
                          statistic3name: statistic3name,
                          statistic3per: statistic3per,
                          statistic4name: statistic4name,
                          statistic4per: statistic4per,
                          statistic5name: statistic5name,
                          statistic5per: statistic5per,
                          statistic6name: statistic6name,
                          statistic6per: statistic6per,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellow,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
