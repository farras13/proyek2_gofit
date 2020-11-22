import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/detail_workout_page/widget/detail_workout_widget.dart';
import 'package:gofits/widgets/player_youtube.dart';

Widget imageDetailMuscleHeader(
  BuildContext context,
  double width,
  double height,
  bool isScrolled,
  String tag,
  String dataImage,
  String name,
  String video,
) {
  return Container(
    width: width,
    child: Stack(
      children: [
        Image.network(
          dataImage,
          width: width,
          height: height * 0.31,
          fit: BoxFit.cover,
        ),
        Container(
          width: width,
          height: height * 0.31,
          color: secondaryColor.withOpacity(0.3),
        ),
        Positioned(
          top: 0,
          child: Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  secondaryColor.withOpacity(0.05)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Positioned(
            child: Container(
          width: width,
          height: height * 0.07,
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: isScrolled ? headerColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: isScrolled ? Colors.black : Colors.transparent,
                  spreadRadius: 1,
                  offset: Offset(0, 2))
            ],
          ),
          child: Row(
            children: [
              btnBack(context, width),
              SizedBox(width: 10),
              workOutName(width, name)
            ],
          ),
        )),
        Positioned(
            top: height * 0.08,
            child: Container(
              width: width,
              height: height * 0.31,
              child: MaterialButton(
                padding: EdgeInsets.only(bottom: height * 0.12),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return Center(
                          child: YoutubePlayers(
                        videoController: video,
                      ));
                    },
                  );
                },
                child: Icon(
                  FontAwesome.play_circle,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ))
      ],
    ),
  );
}

Widget detailMuscleItem(
    BuildContext context, double width, double height, data) {
  return Container(
    margin:
        EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.01),
    width: width,
    height: height * 0.13,
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: ClipRRect(
      child: MaterialButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext dialogContext) {
              return Center(
                child: YoutubePlayersDetail(
                  videoController: data['link'],
                  startAt: int.parse(data['start']),
                  endAt: int.parse(
                    data['end'],
                  ),
                ),
              );
            },
          );
        },
        padding: EdgeInsets.all(width * 0.02),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                data['image'],
                width: width * 0.3,
                height: height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: width * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data['name'],
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ROBB",
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.035,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      clock,
                      width: height * 0.02,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "${data['set'].toString()} x ${data['duration'].toString()} secs",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "ROB",
                        fontSize: width * 0.03,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Rest ${data['rest']} secs",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ROB",
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
