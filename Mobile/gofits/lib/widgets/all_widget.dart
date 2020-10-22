import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget titleApp(double width) {
  return Container(
    margin: EdgeInsets.fromLTRB(
      mainContainerX,
      0,
      mainContainerX,
      0,
    ),
    child: Text(
      "Go Fit",
      style: TextStyle(
        fontSize: width * 0.07,
        fontFamily: "RG",
        color: Colors.white,
      ),
    ),
  );
}
