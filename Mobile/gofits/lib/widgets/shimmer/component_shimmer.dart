import 'package:flutter/material.dart';

Widget rectangleShimmer(double width, double height, double radius) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

Widget circleShimmer(double width) {
  return Container(
    width: width,
    height: width,
    decoration: BoxDecoration(
      color: Colors.grey,
      shape: BoxShape.circle,
    ),
  );
}

Widget tabHorizontalBox(double width) {
  return Container(
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rectangleShimmer(width * 0.4, width * 0.4, 15),
        rectangleShimmer(width * 0.4, width * 0.4, 15),
      ],
    ),
  );
}
