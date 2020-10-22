import 'package:flutter/material.dart';

Widget boxImageWorkout(double width, double height) {
  return Container(
    width: width,
    height: height * 0.43,
    margin: EdgeInsets.symmetric(horizontal: width * 0.03),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        SizedBox(height: height * 0.02),
        Column(
          children: [
            Text(
              "Round 1 Of 2",
              style: TextStyle(
                fontSize: height * 0.025,
                fontFamily: "ROB",
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Basic Sit-up",
              style: TextStyle(
                fontSize: height * 0.035,
                fontFamily: "ROBB",
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 1,
                ),
                Text(
                  "Round 1 Of 2",
                  style: TextStyle(
                    fontSize: height * 0.025,
                    fontFamily: "ROB",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(child: Container())
      ],
    ),
  );
}
