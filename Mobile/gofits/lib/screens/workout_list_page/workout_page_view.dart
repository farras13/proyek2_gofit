import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/workout_list_page/widget/workout_widget.dart';
import 'package:gofits/widgets/all_widget.dart';
import './workout_page_view_model.dart';

class WorkoutListPageView extends WorkoutListPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height *0.13,
              decoration: BoxDecoration(
                color: headerColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, height * 0.01, 0, height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleApp(width),
                  listWorkoutData(width,height),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listWorkoutData(double width,double height) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: workoutList.length,
      itemBuilder: (context, i) {
        return itemWorkoutCard(
          context,
          width,
          height,
          workoutList[i],
        );
      },
    );
  }
}
