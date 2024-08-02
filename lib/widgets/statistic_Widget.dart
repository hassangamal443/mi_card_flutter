import 'package:flutter/material.dart';

class StatisticWidget extends StatelessWidget {
  final String statisticName;
  final double widthFactor;
  final String percentage;
  final Color color; // New color parameter

  const StatisticWidget({
    Key? key,
    required this.statisticName,
    required this.widthFactor,
    required this.percentage,
    required this.color, // Initialize the color parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 15,),
              Expanded(
                child: Text(
                  statisticName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.visible, // Ensures the text wraps to the next line
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              FractionallySizedBox(
                widthFactor: widthFactor / 100,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  decoration: BoxDecoration(
                    color: color, // Use the provided color here
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '$percentage%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
