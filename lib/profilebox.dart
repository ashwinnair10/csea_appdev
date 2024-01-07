// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

Widget buildprofilebox(BuildContext context, String str1, str2, str3, str4, img,
    name, Color c, int check, Function(int) onTabPressed) {
  return DefaultTabController(
    length: 3,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 215,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 31, 74),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                    ),
                    child: Text(
                      'Daily',
                      style: TextStyle(
                        color: (check == 1)
                            ? Colors.white
                            : Color.fromARGB(255, 111, 118, 200),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () => onTabPressed(1),
                  ),
                  Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                    ),
                    child: Text(
                      'Weekly',
                      style: TextStyle(
                        color: (check == 2)
                            ? Colors.white
                            : Color.fromARGB(255, 111, 118, 200),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () => onTabPressed(2),
                  ),
                  Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.all(0),
                    ),
                    child: Text(
                      'Monthly',
                      style: TextStyle(
                        color: (check == 3)
                            ? Colors.white
                            : Color.fromARGB(255, 111, 118, 200),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    onPressed: () => onTabPressed(3),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 88, 71, 235),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 0,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/$img.png'),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - (206),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Report for',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Rubik',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
