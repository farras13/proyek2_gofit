import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/helpers/utils.dart';
import 'package:gofits/widgets/route_animation.dart';

Widget imageHeaderDetailFood(
  BuildContext context,
  double width,
  double height,
  String image,
  int id,
  data,
) {
  return Container(
    width: width,
    height: height * 0.44,
    color: bgColor,
    child: Stack(
      children: [
        Container(
          width: width,
          height: height * 0.35,
          color: Utils.filterExtentionImage(image) ? bgImage : bgColor,
          child: Stack(
            alignment: Utils.filterExtentionImage(image)
                ? Alignment.center
                : Alignment.topCenter,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: Utils.filterExtentionImage(image) ? width * 0.65 : width,
                height: Utils.filterExtentionImage(image)
                    ? height * 0.3
                    : height * 0.35,
              ),
            ],
          ),
        ),
        Positioned(
          top: height * 0.25,
          left: width * 0.1,
          right: width * 0.1,
          child: Container(
            width: width,
            height: height * 0.165,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    color: cardColor,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${data['name']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.026,
                              fontFamily: "ROB",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            "${data['desc']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.02,
                              fontFamily: "ROB",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.013),
                  width: width,
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconDesc(width, board, "${data['portion']} Serves"),
                        iconDesc(width, time, "${data['time']} min"),
                        iconDesc(width, cal, "${data['calories']} cal"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: height * 0.005,
          left: width * 0.01,
          child: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              size: width * 0.08,
              color:
                  Utils.filterExtentionImage(image) ? Colors.white : cardColor,
            ),
            onPressed: () {
              backScreen(context);
            },
          ),
        ),
      ],
    ),
  );
}

Widget iconDesc(double width, String icon, String text) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: width * 0.06,
      ),
      SizedBox(width: width * 0.01),
      Text(
        text,
        style: TextStyle(
          fontFamily: "ROB",
          fontWeight: FontWeight.w700,
          fontSize: width * 0.037,
        ),
      )
    ],
  );
}

Widget iconProcedure(double width, double height, IconData icon, String text) {
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: width * 0.01, vertical: height * 0.006),
    child: Row(
      children: [
        Icon(
          icon,
          size: width * 0.05,
          color: Colors.white,
        ),
        SizedBox(width: width * 0.025),
        SizedBox(
          width: width * 0.8,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "ROB",
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: width * 0.03,
            ),
          ),
        )
      ],
    ),
  );
}

Widget ingridients(double width, double height, data) {
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 8,
          ),
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Ingridients",
            style: TextStyle(
              fontSize: width * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "ROB",
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.only(top: 10),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data['ingridients'].length,
          itemBuilder: (context, i) {
            return iconProcedure(
                width, height, FontAwesome.plus_circle, data['ingridients'][i]);
          },
        )
      ],
    ),
  );
}

Widget methods(double width, double height, data) {
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.03),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 8,
          ),
          decoration: BoxDecoration(
              color: cardColor, borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Methods",
            style: TextStyle(
              fontSize: width * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "ROB",
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.only(top: 10),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data['methods'].length,
          itemBuilder: (context, i) {
            return iconProcedure(
                width, height, FontAwesome.plus_circle, data['methods'][i]);
          },
        )
      ],
    ),
  );
}
