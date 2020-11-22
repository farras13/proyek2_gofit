import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/detail_workout_page/detail_workout_page.dart';
import 'package:gofits/widgets/route_animation.dart';

Widget itemWorkoutCard(
    BuildContext context, double width, double height, data) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 12,
      horizontal: mainContainerX,
    ),
    width: width,
    height: height * 0.31,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () => nextPage(
            context,
            DetailWorkoutPage(
              dataId: data['idWorkout'],
              dataName: data['name'],
              dataImage: data['image'],
              dataVideo: data['link'],
            )),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                data['image'],
                fit: BoxFit.cover,
                width: width,
                height: height * 0.31,
              ),
            ),
            Container(
              color: secondaryColor.withOpacity(0.15),
            ),
            Positioned(
              top: 16,
              left: 8,
              child: Container(
                width: width * 0.3,
                child: Text(
                  data['name'],
                  style: TextStyle(
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: width,
              height: height * 0.1,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data['total']} exercises",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: height * 0.017,
                            fontFamily: "ROB"),
                      ),
                      Text(
                        "${data['duration']} minutes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.017,
                            color: Colors.white,
                            fontFamily: "ROB"),
                      ),
                      Text(
                        "${data['rounds']} round",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "ROB",
                          fontSize: height * 0.017,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        data['type'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.017,
                            color: Colors.white,
                            fontFamily: "ROB"),
                      ),
                      Container(
                        width: width * 0.15,
                        height: height * 0.027,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => nextPage(
                              context,
                              DetailWorkoutPage(
                                dataId: data['idWorkout'],
                                dataName: data['name'],
                                dataImage: data['image'],
                                dataVideo: data['link'],
                              )),
                          child: Center(
                            child: Text(
                              "TRY",
                              style: TextStyle(
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "ROBB"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
