import 'package:flutter/material.dart';
import 'package:gofits/api/muscle_services.dart';
import './muscle_page.dart';

abstract class MusclePageViewModel extends State<MusclePage> {
  // Add your state and logic here
  List muscleList;
  getListMuscle() {
    MuscleServices.getListMuscle().then((value) {
      var jsonObject = value.data;
      setState(() {
        muscleList = List();
        muscleList.addAll(jsonObject['data']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListMuscle();
  }
}
