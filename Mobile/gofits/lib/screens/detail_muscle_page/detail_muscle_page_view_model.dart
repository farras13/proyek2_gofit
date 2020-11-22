import 'package:flutter/material.dart';
import 'package:gofits/api/muscle_services.dart';
import './detail_muscle_page.dart';

abstract class DetailMusclePageViewModel extends State<DetailMusclePage> {
  ScrollController scrollController = ScrollController();
  double dataOffset = 0.0;
  bool isScrolled = false;
  List muscleList;

  getListMuscle() {
    MuscleServices.getDetailMuscle(widget.dataId).then((value) {
      var jsonObject = value.data;
      print(jsonObject);
      setState(() {
        muscleList = List();
        muscleList = jsonObject['data'];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListMuscle();
  }
}
