import 'package:flutter/material.dart';
import './detail_workout_page.dart';

abstract class DetailWorkoutPageViewModel extends State<DetailWorkoutPage> {
  ScrollController scrollController = ScrollController();
  double dataOffset = 0.0;
  bool isScrolled = false;
  List workoutList = [
    {
      "detailIdWorkout": 1,
      "name": "Push Up",
      "image": "assets/images/up.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 2,
      "name": "Squad",
      "image": "assets/images/sq.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 3,
      "name": "Walk Climbing",
      "image": "assets/images/mon.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 4,
      "name": "Push Up",
      "image": "assets/images/up.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 5,
      "name": "Squad",
      "image": "assets/images/sq.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 6,
      "name": "Walk Climbing",
      "image": "assets/images/mon.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 7,
      "name": "Push Up",
      "image": "assets/images/up.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 8,
      "name": "Squad",
      "image": "assets/images/sq.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 9,
      "name": "Walk Climbing",
      "image": "assets/images/mon.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 10,
      "name": "Push Up",
      "image": "assets/images/up.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 11,
      "name": "Squad",
      "image": "assets/images/sq.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 12,
      "name": "Walk Climbing",
      "image": "assets/images/mon.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 13,
      "name": "Push Up",
      "image": "assets/images/up.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 14,
      "name": "Squad",
      "image": "assets/images/sq.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
    {
      "detailIdWorkout": 15,
      "name": "Walk Climbing",
      "image": "assets/images/mon.jpg",
      "set": 3,
      "duration": 70,
      "rest": 60
    },
  ];
}
