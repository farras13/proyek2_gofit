import 'package:flutter/material.dart';
import 'package:gofits/api/workout_services.dart';
import './workout_page.dart';

abstract class WorkoutListPageViewModel extends State<WorkoutListPage> {
  List workoutList;

  getListWorkout() {
    WorkoutServices.getListWorkout().then((value) {
      var jsonObject = value.data;
      setState(() {
        workoutList = List();
        workoutList.addAll(jsonObject['data']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListWorkout();
  }
}
