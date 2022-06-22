import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> resName = [
    "Mc Donald's",
    "Pizza Hut",
    "Burger king",
    "Domino Pizza",
    "Shinwari",
  ];
  int currentIndex = 1;
  void generateRandom() {
    var random = Random();
    setState(() {
      currentIndex = random.nextInt(resName.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("What is Your Favourite Resturent?"),
            Text(
              resName[currentIndex],
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            TextButton(
              onPressed: () {
                generateRandom();
              },
              child: const Text("Random"),
            )
          ],
        ),
      ),
    );
  }
}
