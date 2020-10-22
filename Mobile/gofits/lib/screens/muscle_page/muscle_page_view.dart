import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import './muscle_page_view_model.dart';

class MusclePageView extends MusclePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Image.asset("assets/images/lr.gif"),
      ),
    );
  }
}
