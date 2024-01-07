// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget buildbox(BuildContext context, String str1, str2, str3, str4, Color c) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        height: 200,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: c,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: 70,
                  child: Image.asset(
                    'assets/$str4.png',
                    fit: BoxFit.fitWidth,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 28, 31, 74),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  str1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  str2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                Text(
                  str3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
