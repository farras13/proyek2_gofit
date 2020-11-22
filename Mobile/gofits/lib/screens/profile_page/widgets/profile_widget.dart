import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/body_calories_page/body_calories_page.dart';
import 'package:gofits/screens/food_calories_page/food_calories_page.dart';
import 'package:gofits/widgets/route_animation.dart';

Widget imageSection(double width, String dataImage) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: width * 0.5,
        height: width * 0.5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
      Container(
        width: width * 0.48,
        height: width * 0.48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
      ),
      Icon(
        FontAwesome.user_circle,
        size: width * 0.46,
        color: Colors.white,
      )
    ],
  );
}

Widget dataSectionProfile(double width, String name) {
  return Container(
    child: Text(
      name,
      style: TextStyle(
        fontSize: width * 0.065,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "ROBB",
      ),
    ),
  );
}

Widget serviceSectionProfile(BuildContext context, double width) {
  return Container(
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        btnServiceProfile(context, "Body Calories", page: BodyCaloriesPage()),
        btnServiceProfile(context, "Food Calories", page: FoodCaloriesPage()),
      ],
    ),
  );
}

Widget btnServiceProfile(BuildContext context, String title, {page}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    width: width * 0.28,
    height: height * 0.045,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      color: bgColor,
      border: Border.all(color: mainColor, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: () {
          nextPage(context, page);
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    ),
  );
}

Widget infoProfile(
  double width,
  String gender,
  String height,
  String weight,
  String age,
) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        infoBox(width, "Gender", gender),
        infoBox(width, "Height", "$height cm"),
        infoBox(width, "Weight", "$weight kg"),
        infoBox(width, "Age", age),
      ],
    ),
  );
}

Widget infoBox(double width, String title, String value) {
  return Container(
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: width * 0.03,
            color: Colors.white,
            fontFamily: "ROBB",
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: width * 0.22,
          height: 40,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                fontSize: width * 0.03,
                color: Colors.white,
                fontFamily: "ROB",
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget textMotivation(double width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
    child: Text(
      "Exercising should be about rewarding the body with endorphins and strength. Not about punishing your body  for what you’ve eaten.",
      style: TextStyle(
        fontSize: width * 0.03,
        color: Colors.white,
        fontFamily: "ROB",
      ),
      textAlign: TextAlign.center,
    ),
  );
}
