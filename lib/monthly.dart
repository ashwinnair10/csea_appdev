// ignore_for_file: prefer_const_constructors

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

Widget buildmonthlybar(BuildContext context) {
  return Column(
    children: [
      buildbox(
        context,
        'Work',
        '103 hrs',
        'Last Month - 128 hrs',
        'work',
        Color.fromARGB(255, 255, 140, 102),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Play',
        '23 hrs',
        'Last Month - 29 hrs',
        'play',
        Color.fromARGB(255, 86, 194, 230),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Study',
        '13 hrs',
        'Last Month - 19 hrs',
        'study',
        Color.fromARGB(255, 255, 92, 124),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Exercise',
        '11 hrs',
        'Last Month - 18 hrs',
        'exercise',
        Color.fromARGB(255, 74, 207, 129),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Social',
        '21 hrs',
        'Last Month - 23 hrs',
        'social',
        Color.fromARGB(255, 117, 54, 211),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Self-care',
        '7 hrs',
        'Last Month - 11 hrs',
        'selfcare',
        Color.fromARGB(255, 241, 198, 91),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
