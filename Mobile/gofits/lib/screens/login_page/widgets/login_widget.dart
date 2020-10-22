import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget headerLoginPage(double width, double height) {
  return Container(
    child: Column(
      children: [
        Text("Go Fit", style: titleText),
        SizedBox(
          width: width * 0.3,
          child: Text(
            "Sign in to your existing account",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
