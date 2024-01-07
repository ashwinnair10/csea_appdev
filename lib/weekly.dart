// ignore_for_file: prefer_const_constructors

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

Widget buildweeklybar(BuildContext context) {
  return Column(
    children: [
      buildbox(
        context,
        'Work',
        '32 hrs',
        'Last week - 36 hrs',
        'work',
        Color.fromARGB(255, 255, 140, 102),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Play',
        '18 hrs',
        'Last week - 8 hrs',
        'play',
        Color.fromARGB(255, 86, 194, 230),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Study',
        '4 hrs',
        'Last week - 7 hrs',
        'study',
        Color.fromARGB(255, 255, 92, 124),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Exercise',
        '4 hrs',
        'Last week - 5 hrs',
        'exercise',
        Color.fromARGB(255, 74, 207, 129),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Social',
        '5 hrs',
        'Last week - 10 hrs',
        'social',
        Color.fromARGB(255, 117, 54, 211),
      ),
      SizedBox(
        height: 20,
      ),
      buildbox(
        context,
        'Self-care',
        '2 hrs',
        'Last week - 2 hrs',
        'selfcare',
        Color.fromARGB(255, 241, 198, 91),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
