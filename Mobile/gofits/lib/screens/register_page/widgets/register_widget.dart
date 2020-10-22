import 'package:flutter/material.dart';

Widget headerRegisterPage(double width, double height) {
  return Container(
    margin: EdgeInsets.only(top: height * 0.05),
    child: Column(
      children: [
        Text(
          "Go Fit",
          style: TextStyle(
            fontSize: 26,
            fontFamily: "RG",
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: width * 0.4,
          child: Text(
            "Sign up",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(
          "assets/images/avatar.png",
          width: 60,
          height: 60,
        )
      ],
    ),
  );
}
