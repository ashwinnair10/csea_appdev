// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 20, 36),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 200, 30, 20),
        child: Column(
          children: [
            buildbox(
              context,
              'Work',
              '5 hrs',
              'Yesterday - 7 hrs',
              'work',
              Color.fromARGB(255, 255, 140, 102),
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Play',
              '1 hrs',
              'Yesterday - 2 hrs',
              'play',
              Color.fromARGB(255, 86, 194, 230),
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Study',
              '0 hrs',
              'Yesterday - 1 hrs',
              'study',
              Color.fromARGB(255, 255, 92, 124),
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Exercise',
              '1 hrs',
              'Yesterday - 1 hrs',
              'exercise',
              Color.fromARGB(255, 74, 207, 129),
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Social',
              '1 hrs',
              'Yesterday - 3 hrs',
              'social',
              Color.fromARGB(255, 117, 54, 211),
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Self-care',
              '0 hrs',
              'Yesterday - 1 hrs',
              'selfcare',
              Color.fromARGB(255, 241, 198, 91),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
