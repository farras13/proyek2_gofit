import 'package:flutter/material.dart';
import './detail_workout_page_view.dart';

class DetailWorkoutPage extends StatefulWidget {
  final String dataId;
  final String dataName;
  final String dataImage;
  final String dataVideo;
  

  const DetailWorkoutPage({
    Key key,
    this.dataId,
    this.dataName,
    this.dataImage, this.dataVideo,
  }) : super(key: key);
  @override
  DetailWorkoutPageView createState() => new DetailWorkoutPageView();
}
