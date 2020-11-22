import 'package:flutter/material.dart';
import 'package:gofits/api/workout_services.dart';
import './detail_workout_page.dart';

abstract class DetailWorkoutPageViewModel extends State<DetailWorkoutPage> {
  ScrollController scrollController = ScrollController();
  double dataOffset = 0.0;
  bool isScrolled = false;
  List workoutList;

  getListDetailWortkout() {
    WorkoutServices.getDetailWorkout(widget.dataId).then((value) {
      var jsonObject = value.data;
      print(jsonObject['data']);
      setState(() {
        workoutList = List();
        workoutList.addAll(jsonObject['data']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListDetailWortkout();
  }
}
