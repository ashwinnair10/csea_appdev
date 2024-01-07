// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

Widget buildmonthlybar(BuildContext context) {
  return Column(
    children: [
      ExpandableBox(
        str1: 'Work',
        str2: '103 hrs',
        str3: 'Last Month - 128 hrs',
        str4: 'work',
        c: Color.fromARGB(255, 255, 140, 102),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Play',
        str2: '23 hrs',
        str3: 'Last Month - 29 hrs',
        str4: 'play',
        c: Color.fromARGB(255, 86, 194, 230),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Study',
        str2: '13 hrs',
        str3: 'Last Month - 19 hrs',
        str4: 'study',
        c: Color.fromARGB(255, 255, 92, 124),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Exercise',
        str2: '11 hrs',
        str3: 'Last Month - 18 hrs',
        str4: 'exercise',
        c: Color.fromARGB(255, 74, 207, 129),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Social',
        str2: '21 hrs',
        str3: 'Last Month - 23 hrs',
        str4: 'social',
        c: Color.fromARGB(255, 117, 54, 211),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Self-care',
        str2: '7 hrs',
        str3: 'Last Month - 11 hrs',
        str4: 'selfcare',
        c: Color.fromARGB(255, 241, 198, 91),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
