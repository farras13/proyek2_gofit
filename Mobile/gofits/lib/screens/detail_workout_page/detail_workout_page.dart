import 'package:flutter/material.dart';
import './detail_workout_page_view.dart';

class DetailWorkoutPage extends StatefulWidget {
  final int dataId;
  final String dataName;
  final String dataImage;
  final int totalExercise;
  final int duration;
  final int round;

  const DetailWorkoutPage({
    Key key,
    this.dataId,
    this.dataName,
    this.dataImage,
    this.totalExercise,
    this.duration,
    this.round,
  }) : super(key: key);
  @override
  DetailWorkoutPageView createState() => new DetailWorkoutPageView();
}
