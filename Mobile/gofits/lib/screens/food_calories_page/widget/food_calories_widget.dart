import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget contentFood(
  double width,
  double height,
  String image,
  String qty,
  String inggridient,
) {
  return Container(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "in $qty g of $inggridient contained:",
          style: TextStyle(
            fontSize: width * 0.038,
            color: Colors.white,
            fontFamily: "ROB",
          ),
        ),
        SizedBox(height: height * 0.03),
        Image.asset(
          image,
          width: width * 0.5,
          height: height * 0.2,
        ),
      ],
    ),
  );
}

Widget calorieData(
  double width,
  double height,
  double protein,
  double fat,
  double carbo,
) {
  return Container(
    width: width,
    child: Column(
      children: [
        Text(
          "Calories From",
          style: TextStyle(
            fontSize: width * 0.05,
            color: Colors.white,
            fontFamily: "ROBB",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            itemCalorieData(width, height, "CARBS", carbo),
            itemCalorieData(width, height, "PROTEIN", protein),
            itemCalorieData(width, height, "FAT", fat),
          ],
        ),
      ],
    ),
  );
}

Widget itemCalorieData(
  double width,
  double height,
  String title,
  double value,
) {
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
                  value.toString(),
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
                  "kcal",
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

Widget conclutionBox(double width, String qty, double total, String name) {
  return Container(
    width: width,
    margin: EdgeInsets.symmetric(horizontal: width * 0.2),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    decoration: BoxDecoration(
      color: boxInformation,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Text(
      "There are $total calories in \n$qty g $name",
      style: TextStyle(
        fontSize: 13,
        color: Colors.white,
        fontFamily: "ROB",
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget emptyFood(double width, double height) {
  return Container(
    width: width,
    height: height,
    child: Column(
      children: [
        Image.asset(
          "assets/images/makanan2.png",
          width: width * 0.8,
          height: height * 0.4,
        ),
        SizedBox(
          width: width * 0.9,
          child: Text(
            "Look for food ingredients that you will use to find out the amount of calories\n......................",
            style: TextStyle(
              fontSize: width * 0.04,
              color: Colors.white,
              fontFamily: "ROBB"
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
