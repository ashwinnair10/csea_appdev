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
              Colors.orange,
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Play',
              '1 hrs',
              'Yesterday - 2 hrs',
              Colors.cyan,
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Study',
              '0 hrs',
              'Yesterday - 1 hrs',
              Colors.pink,
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Exercise',
              '1 hrs',
              'Yesterday - 1 hrs',
              Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Social',
              '1 hrs',
              'Yesterday - 3 hrs',
              Colors.purple,
            ),
            SizedBox(
              height: 20,
            ),
            buildbox(
              context,
              'Self-care',
              '0 hrs',
              'Yesterday - 1 hrs',
              Colors.yellow,
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
