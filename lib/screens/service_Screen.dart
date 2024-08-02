import 'package:black/widgets/myScaffold2.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  final String title;
  final String description;
  final Container container1;
  final Container container2;
  final Container container3;
  final Container container4;

  const ServicesScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.container1,
    required this.container2,
    required this.container3,
    required this.container4,
  }) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width, // replace deviceWidth(context)
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        'assets/completed-task.png',
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "450",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Customers",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        'assets/task-management.png',
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "k 48",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Completed projects",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        'assets/time.png',
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "k 95",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "work hours",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        'assets/customer-service.png',
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "24/7",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Support is available",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            widget.container1,
            widget.container2,
            widget.container3,
            widget.container4,
          ],
        ),
      ),
    );
  }
}
