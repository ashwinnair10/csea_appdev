// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:csea_appdev/box.dart';
import 'package:flutter/material.dart';

Widget builddailybar(BuildContext context) {
  return Column(
    children: [
      ExpandableBox(
        str1: 'Work',
        str2: '5 hrs',
        str3: 'Yesterday - 7 hrs',
        str4: 'work',
        str5: 'You have worked for 5 hours today',
        c: Color.fromARGB(255, 255, 140, 102),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Play',
        str2: '1 hrs',
        str3: 'Yesterday - 2 hrs',
        str4: 'play',
        str5: 'You have played for 1 hours today',
        c: Color.fromARGB(255, 86, 194, 230),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Study',
        str2: '0 hrs',
        str3: 'Yesterday - 1 hrs',
        str4: 'study',
        str5: 'You have studied for 0 hours today',
        c: Color.fromARGB(255, 255, 92, 124),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Exercise',
        str2: '1 hrs',
        str3: 'Yesterday - 1 hrs',
        str4: 'exercise',
        str5: 'You have exercised for 1 hours today',
        c: Color.fromARGB(255, 74, 207, 129),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Social',
        str2: '1 hrs',
        str3: 'Yesterday - 3 hrs',
        str4: 'social',
        str5: 'You have socialized for 1 hours today',
        c: Color.fromARGB(255, 117, 54, 211),
      ),
      SizedBox(
        height: 20,
      ),
      ExpandableBox(
        str1: 'Self-care',
        str2: '0 hrs',
        str3: 'Yesterday - 1 hrs',
        str4: 'selfcare',
        str5: 'You have engaged in self-care for 0 hours today',
        c: Color.fromARGB(255, 241, 198, 91),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
