import 'package:flutter/material.dart';

class LayeredStack extends StatelessWidget {
  final Widget child;

  LayeredStack({required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 77, // Adjust the width to accommodate the positioned container
          height: 77, // Adjust the height to accommodate the positioned container
        ),
        Positioned(
          right: 7,
          bottom: 7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.circular(5),
            ),
            width: 70,
            height: 70,
          ),
        ),
        Positioned(
          left: 7,
          top: 7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5),
            ),
            width: 70,
            height: 70,
            child: Center(
              child: child, // Place the required child here
            ),
          ),
        ),
      ],
    );
  }
}
