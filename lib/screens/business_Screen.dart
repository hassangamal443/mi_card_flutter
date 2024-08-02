import 'package:black/widgets/myScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/animated_Divider.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({super.key});

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  String selectedCategory = 'Web'; // Default selected category

  final List<Map<String, dynamic>> items = [
    {
      'img': 'assets/1w.png',
      'category': 'Web',
      'onTap': () {
      },
    },
    {
      'img': 'assets/2w.png',
      'category': 'Web',
      'onTap': () {
      },
    },
    {
      'img': 'assets/3w.png',
      'category': 'Web',
      'onTap': () {
      },
    },
    {
      'img': 'assets/4w.png',
      'category': 'Web',
      'onTap': () {
      },
    },
    {
      'img': 'assets/1m.jpg',
      'category': 'Mobile Application',
      'onTap': () {
      },
    },
    {
      'img': 'assets/2m.jpg',
      'category': 'Mobile Application',
      'onTap': () {
      },
    },
    {
      'img': 'assets/1e.png',
      'category': 'E-Marketing',
      'onTap': () {
      },
    },
    {
      'img': 'assets/1b.png',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/2b.png',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/3b.jpg',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/4b.png',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/5b.jpg',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/6b.jpg',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
    {
      'img': 'assets/8b.jpg',
      'category': 'Brand Design',
      'onTap': () {
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "OUR BUSINESS",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "THIS CONTAINS ALL OUR WORK",
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
            SizedBox(height: 30),
            Text(
              "OUR BUSINESS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 20),
            MovingDotAnimation(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryButton('Web'),
                categoryButton('Mobile Application'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                categoryButton('E-Marketing'),
                categoryButton('Brand Design'),
              ],
            ),
            SizedBox(height: 20),
            ...items
                .where((item) => item['category'] == selectedCategory)
                .map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: businessContainer(
                img: item['img']!,
                onTap: item['onTap'],
                category: item['category']!,
              ),
            ))
                .toList(),
          ],
        ),
      ),
    );
  }

  Widget categoryButton(String category) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selectedCategory == category ? Colors.yellow : Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          category,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: selectedCategory == category ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class businessContainer extends StatelessWidget {
  final String img;
  final VoidCallback onTap;
  final String category;

  const businessContainer({
    super.key,
    required this.img,
    required this.onTap,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(img),
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Learn More',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Oxanium',
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
