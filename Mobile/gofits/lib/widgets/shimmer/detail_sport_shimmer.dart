import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/widgets/shimmer/component_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class DeetailSportShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Shimmer(
      gradient: LinearGradient(
          colors: [headerColor, bgColor, headerColor],
          begin: Alignment(1, 1),
          end: Alignment(-1, -1),
          stops: [0.4, 0.5, 0.6]),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: mainContainerX),
        child: Column(
          children: [
            SizedBox(height: height * 0.03),
            rectangleShimmer(width, height * 0.3, 15),
            SizedBox(height: height * 0.03),
            rectangleShimmer(width, height * 0.14, 15),
            SizedBox(height: height * 0.02),
            rectangleShimmer(width, height * 0.14, 15),
            SizedBox(height: height * 0.02),
            rectangleShimmer(width, height * 0.14, 15),
            SizedBox(height: height * 0.02),
            rectangleShimmer(width, height * 0.14, 15),
          ],
        ),
      ),
    );
  }
}
