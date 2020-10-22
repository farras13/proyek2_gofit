import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/show_workout_page/show_workout_page.dart';
import 'package:gofits/widgets/route_animation.dart';

Widget imageDetailWorkoutHeader(
  BuildContext context,
  double width,
  double height,
  bool isScrolled,
  int tag,
  String dataImage,
  String name,
  int totalExercise,
  int duration,
  int round,
) {
  return Container(
    width: width,
    child: Stack(
      children: [
        Image.asset(
          dataImage,
          width: width,
          height: height * 0.31,
          fit: BoxFit.cover,
        ),
        Container(
          width: width,
          height: height * 0.31,
          color: secondaryColor.withOpacity(0.15),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: width,
            height: height * 0.1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.8),
                  secondaryColor.withOpacity(0.15)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dataWorkout(
                        width,
                        height,
                        duration.toString(),
                        "Minutes",
                      ),
                      verticalDivider(height),
                      dataWorkout(
                        width,
                        height,
                        round.toString(),
                        "Rounds",
                      ),
                      verticalDivider(height),
                      dataWorkout(
                        width,
                        height,
                        totalExercise.toString(),
                        "Exercises",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  secondaryColor.withOpacity(0.05)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
            child: Container(
          width: width,
          height: height * 0.07,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: isScrolled ? headerColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: isScrolled ? Colors.black : Colors.transparent,
                  spreadRadius: 1,
                  offset: Offset(0, 2))
            ],
          ),
          child: Row(
            children: [
              btnBack(context, width),
              SizedBox(width: 10),
              workOutName(width, name)
            ],
          ),
        )),
      ],
    ),
  );
}

Widget btnBack(BuildContext context, double width) {
  return GestureDetector(
    child: Icon(
      Icons.keyboard_backspace,
      size: width * 0.06,
      color: Colors.white,
    ),
    onTap: () {
      backScreen(context);
    },
  );
}

Widget workOutName(double width, String name) {
  return Text(
    name,
    style: TextStyle(
      fontSize: width * 0.045,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Widget verticalDivider(double height) {
  return Container(
    width: 3,
    height: height * 0.07,
    color: Colors.white,
  );
}

Widget dataWorkout(double width, double height, String value, String title) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(
            fontSize: height * 0.029, color: Colors.white, fontFamily: "ROBB"),
      ),
      SizedBox(height: 4),
      Text(
        title,
        style: TextStyle(
            fontSize: width * 0.03, color: Colors.white, fontFamily: "ROBB"),
      ),
    ],
  );
}

Widget detailWorkoutItem(
    BuildContext context, double width, double height, data) {
  return Container(
    margin:
        EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.01),
    width: width,
    height: height * 0.13,
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: ClipRRect(
      child: MaterialButton(
        onPressed: () {
          nextPage(context, ShowWorkoutPage());
        },
        padding: EdgeInsets.all(width * 0.02),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                data['image'],
                width: width * 0.3,
                height: height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data['name'],
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ROBB",
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.035,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      clock,
                      width: height * 0.02,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "${data['set'].toString()} x ${data['duration'].toString()} secs",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ROB",
                        fontSize: width * 0.03,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Rest ${data['rest']} secs",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ROB",
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
