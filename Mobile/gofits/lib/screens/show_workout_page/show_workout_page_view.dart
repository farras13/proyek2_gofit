import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/show_workout_page/widget/show_workout_widget.dart';
import 'package:gofits/widgets/route_animation.dart';

import './show_workout_page_view_model.dart';

class ShowWorkoutPageView extends ShowWorkoutPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
          children: [
            headerShowWorkoutPage(width),
            SizedBox(height: height * 0.05),
            boxImageWorkout(width, height),
          ],
        ),
      ),
    );
  }

  Widget headerShowWorkoutPage(double width) {
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
              size: width * 0.07,
            ),
            onPressed: () {
              backScreen(context);
            },
          ),
          Text(
            "Run in Position",
            style: TextStyle(
              fontSize: width * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          IconButton(
            icon: Icon(
              FontAwesome.info_circle,
              color: Colors.white,
              size: width * 0.06,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
