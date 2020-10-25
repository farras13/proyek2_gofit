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
    child: Row(
      children: [
        Image.asset(
          "assets/icons/logo.png",
          width: width * 0.115,
          height: width * 0.115,
        ),
        SizedBox(width: 4),
        Text(
          "Go Fit",
          style: TextStyle(
            fontSize: width * 0.06,
            fontFamily: "RG",
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
