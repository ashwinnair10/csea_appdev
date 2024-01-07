// ignore_for_file: prefer_const_constructors

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

Widget buildweeklybar(BuildContext context) {
  return Column(
    children: [
      buildbox(
        context,
        'Work',
        '5 hrs',
        'Last week - 7 hrs',
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
        'Last week - 2 hrs',
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
        'Last week - 1 hrs',
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
        'Last week - 1 hrs',
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
        'Last week - 3 hrs',
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
        'Last week - 1 hrs',
        'selfcare',
        Color.fromARGB(255, 241, 198, 91),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
