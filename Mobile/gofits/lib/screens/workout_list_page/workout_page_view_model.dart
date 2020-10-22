import 'package:flutter/material.dart';
import './workout_page.dart';

abstract class WorkoutListPageViewModel extends State<WorkoutListPage> {
  List workoutList = [
    {
      "idWorkout": 1,
      "image": "assets/images/string.jpg",
      "name": "HIIT Cardio Workout",
      "type": "Basic Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 2
    },
    {
      "idWorkout": 2,
      "image": "assets/images/sit.jpg",
      "name": "Happy Sweat Workout",
      "type": "No Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 3
    },
    {
      "idWorkout": 3,
      "image": "assets/images/push.jpg",
      "name": "Weight Loss Workout",
      "type": "No Equipment",
      "total": 10,
      "duration": 30,
      "rounds": 15
    },
    {
      "idWorkout": 4,
      "image": "assets/images/barbel.jpg",
      "name": "Strenght Body Workout",
      "type": "Weight Equipment",
      "total": 5,
      "duration": 10,
      "rounds": 7
    },
  ];
}
