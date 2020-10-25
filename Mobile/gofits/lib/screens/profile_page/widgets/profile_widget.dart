import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget imageSection(double width, String dataImage) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: width * 0.5,
        height: width * 0.5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
      Container(
        width: width * 0.48,
        height: width * 0.48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
      ),
      Container(
        width: width * 0.46,
        height: width * 0.46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              dataImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Widget dataSectionProfile(double width) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Pak Ndul",
          style: TextStyle(
            fontSize: width * 0.065,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "ROBB",
          ),
        ),
        SizedBox(height: 10),
        Text(
          "MALANG, EAST JAVA, INDONESIA",
          style: TextStyle(
            fontSize: width * 0.035,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "ROBB",
          ),
        ),
      ],
    ),
  );
}

Widget serviceSectionProfile(double width) {
  return Container();
}
