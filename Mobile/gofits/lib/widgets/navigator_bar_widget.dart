import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

bottomBar(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    width: width,
    height: height * 0.09,
    decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )),
    child: TabBar(
      labelColor: Colors.grey,
      indicatorColor: mainColor,
      unselectedLabelColor: mainColor,
      tabs: <Widget>[
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                workout,
                width: width * 0.05,
                height: width * 0.05,
              ),
              SizedBox(height: 3),
              Text(
                "Workout",
                style: TextStyle(
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                food,
                width: width * 0.05,
                height: width * 0.05,
              ),
              SizedBox(height: 3),
              Text(
                "Food",
                style: TextStyle(
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                muscle,
                width: width * 0.05,
                height: width * 0.05,
              ),
              SizedBox(height: 3),
              Text(
                "Muscle",
                style: TextStyle(
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                profile,
                width: width * 0.05,
                height: width * 0.05,
              ),
              SizedBox(height: 3),
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
