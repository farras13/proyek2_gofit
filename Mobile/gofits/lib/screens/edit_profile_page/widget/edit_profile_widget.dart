import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';

Widget editImageSection(double width, String dataImage) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: width * 0.35,
        height: width * 0.35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: mainColor,
        ),
      ),
      Container(
        width: width * 0.33,
        height: width * 0.33,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
      ),
      Container(
        width: width * 0.31,
        height: width * 0.31,
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
      Positioned(
        bottom: 0,
        right: 0,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {},
          child: Container(
            width: width * 0.1,
            height: width * 0.1,
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                FontAwesome.camera_retro,
                color: mainColor,
                size: width * 0.045,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
