import 'package:black/widgets/myScaffold2.dart';
import 'package:black/widgets/statistic_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'aboutUs_Screen.dart';

class MembersScreen extends StatefulWidget {
  final String img1;
  final String name;
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

  const MembersScreen({
    Key? key,
    required this.img1,
    required this.name,
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
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset(widget.img1),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      widget.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.grey,thickness: 1,indent: 30,endIndent: 30,),
                    SizedBox(height: 10,),
                    Text(
                      widget.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              StatisticWidget(
                color: Colors.indigo,
                  statisticName: widget.statistic1name,
                  widthFactor: widget.statistic1per,
                  percentage: widget.statistic1per.toString()
              ),
              SizedBox(height: 10,),
              StatisticWidget(
                color: Colors.yellow,
                  statisticName: widget.statistic2name,
                  widthFactor: widget.statistic2per,
                  percentage: widget.statistic2per.toString()
              ),
              SizedBox(height: 10,),
              StatisticWidget(
                color: Colors.red,
                  statisticName: widget.statistic3name,
                  widthFactor: widget.statistic3per,
                  percentage: widget.statistic3per.toString()
              ),
              SizedBox(height: 10,),
              StatisticWidget(
                color: Colors.lightBlueAccent,
                  statisticName: widget.statistic4name,
                  widthFactor: widget.statistic4per,
                  percentage: widget.statistic4per.toString()
              ),
              SizedBox(height: 10,),
              StatisticWidget(
                color: Colors.orange,
                  statisticName: widget.statistic5name,
                  widthFactor: widget.statistic5per,
                  percentage: widget.statistic5per.toString()
              ),
              SizedBox(height: 10,),
              StatisticWidget(
                color: Colors.green,
                  statisticName: widget.statistic6name,
                  widthFactor: widget.statistic6per,
                  percentage: widget.statistic6per.toString()
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
    );
  }
}
