// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ExpandableBox extends StatefulWidget {
  final String str1, str2, str3, str4;
  final Color c;

  const ExpandableBox({
    Key? key,
    required this.str1,
    required this.str2,
    required this.str3,
    required this.str4,
    required this.c,
  }) : super(key: key);

  @override
  _ExpandableBoxState createState() => _ExpandableBoxState();
}

class _ExpandableBoxState extends State<ExpandableBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: isExpanded ? 300 : 200,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.c,
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
                        'assets/${widget.str4}.png',
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  ],
                ),
              ],
            ),
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
                    widget.str1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    icon: Icon(
                      Icons.more_horiz,
                      color: const Color.fromARGB(255, 189, 193, 255),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.str2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  Spacer(),
                  Text(
                    widget.str3,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 189, 193, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Rubik',
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
}

/*import 'package:flutter/material.dart';

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
                    fontFamily: 'Rubik',
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: const Color.fromARGB(255, 189, 193, 255),
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
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Rubik',
                  ),
                ),
                Spacer(),
                Text(
                  str3,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 189, 193, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Rubik',
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
*/