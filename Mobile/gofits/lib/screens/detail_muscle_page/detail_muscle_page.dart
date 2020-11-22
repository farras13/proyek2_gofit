import 'package:flutter/material.dart';
import './detail_muscle_page_view.dart';

class DetailMusclePage extends StatefulWidget {
  final String dataId;
  final String dataName;
  final String dataImage;
  final String video;

  const DetailMusclePage({
    Key key,
    this.dataId,
    this.dataName,
    this.dataImage, this.video,
  }) : super(key: key);
  @override
  DetailMusclePageView createState() => new DetailMusclePageView();
}
