import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget contentFood(double width, double height) {
  return Container(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "in 100 gram of Tuna Bowl contained:",
          style: TextStyle(
            fontSize: width * 0.038,
            color: Colors.white,
            fontFamily: "ROB",
          ),
        ),
        SizedBox(height: height * 0.03),
        Image.asset(
          "assets/images/makanan2.png",
          width: width * 0.5,
          height: height * 0.2,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget calorieData(double width, double height) {
  return Container(
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        itemCalorieData(width, height, "CARBS", "41,7"),
        itemCalorieData(width, height, "PROTEIN", "12.47"),
        itemCalorieData(width, height, "FAT", "12.37"),
        itemCalorieData(
          width,
          height,
          "KCAL",
          "333",
          isCal: true,
        ),
      ],
    ),
  );
}

Widget itemCalorieData(
  double width,
  double height,
  String title,
  String value, {
  bool isCal = false,
}) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
          color: mainColor,
          fontWeight: FontWeight.bold,
          fontFamily: "ROBB",
        ),
      ),
      SizedBox(height: 6),
      Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              width: width * 0.18,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
              ),
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: width * 0.18,
              height: height * 0.03,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: Center(
                child: Text(
                  isCal ? "kal" : "gram",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget conclutionBox(double width) {
  return Container(
    width: width,
    margin: EdgeInsets.symmetric(horizontal: width * 0.2),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    decoration: BoxDecoration(
      color: boxInformation,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Text(
      "There are 333 calories in one Tuna Bowl",
      style: TextStyle(
        fontSize: 13,
        color: Colors.white,
        fontFamily: "ROB",
      ),
      textAlign: TextAlign.center,
    ),
  );
}
