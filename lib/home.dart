// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print
import 'package:csea_appdev/daily.dart';
import 'package:csea_appdev/monthly.dart';
import 'package:csea_appdev/profilebox.dart';
import 'package:csea_appdev/weekly.dart';
import 'package:flutter/material.dart';

int check = 1;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

test() {
  print(check);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    test();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 20, 36),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Column(
          children: [
            buildprofilebox(
              context,
              'Work',
              '5 hrs',
              'Yesterday - 7 hrs',
              'work',
              'person',
              'Jeremy Robson',
              Color.fromARGB(255, 255, 140, 102),
              check,
              (int value) {
                setState(() {
                  check = value;
                  print(check);
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            if (check == 1) builddailybar(context),
            if (check == 2) buildweeklybar(context),
            if (check == 3) buildmonthlybar(context),
          ],
        ),
      ),
    );
  }
}
