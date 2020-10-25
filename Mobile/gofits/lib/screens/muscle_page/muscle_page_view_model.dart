import 'package:flutter/material.dart';
import './muscle_page.dart';

abstract class MusclePageViewModel extends State<MusclePage> {
  // Add your state and logic here
  List muscleList = [
    {
      "idMuscle": 1,
      "image": "assets/images/string.jpg",
      "name": "HIIT Cardio Muscle",
      "type": "Basic Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 2
    },
    {
      "idMuscle": 2,
      "image": "assets/images/sit.jpg",
      "name": "Happy Sweat Muscle",
      "type": "No Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 3
    },
    {
      "idMuscle": 3,
      "image": "assets/images/push.jpg",
      "name": "Weight Loss Muscle",
      "type": "No Equipment",
      "total": 10,
      "duration": 30,
      "rounds": 15
    },
    {
      "idMuscle": 4,
      "image": "assets/images/barbel.jpg",
      "name": "Strenght Body Muscle",
      "type": "Weight Equipment",
      "total": 5,
      "duration": 10,
      "rounds": 7
    },
    {
      "idMuscle": 1,
      "image": "assets/images/string.jpg",
      "name": "HIIT Cardio Muscle",
      "type": "Basic Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 2
    },
    {
      "idMuscle": 2,
      "image": "assets/images/sit.jpg",
      "name": "Happy Sweat Muscle",
      "type": "No Equipment",
      "total": 20,
      "duration": 40,
      "rounds": 3
    },
    {
      "idMuscle": 3,
      "image": "assets/images/push.jpg",
      "name": "Weight Loss Muscle",
      "type": "No Equipment",
      "total": 10,
      "duration": 30,
      "rounds": 15
    },
    {
      "idMuscle": 4,
      "image": "assets/images/barbel.jpg",
      "name": "Strenght Body Muscle",
      "type": "Weight Equipment",
      "total": 5,
      "duration": 10,
      "rounds": 7
    },
    {
      "idMuscle": 4,
      "image": "assets/images/barbel.jpg",
      "name": "Strenght Body Muscle",
      "type": "Weight Equipment",
      "total": 5,
      "duration": 10,
      "rounds": 7
    },
  ];
}
