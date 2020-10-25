import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/widgets/all_widget.dart';
import './muscle_page_view_model.dart';

class MusclePageView extends MusclePageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height * 0.12,
              decoration: BoxDecoration(
                color: headerColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                titleApp(width),
                StaggeredGridView.countBuilder(
                  padding: EdgeInsets.fromLTRB(
                    mainContainerX,
                    10,
                    mainContainerX,
                    mainContainerY,
                  ),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: muscleList.length,
                  staggeredTileBuilder: (i) {
                    var main = 0;
                    var cross = 0;
                    if (i % 1 == 0) {
                      main = 1;
                      cross = 1;
                    }
                    if (i % 2 == 0) {
                      main = 1;
                      cross = 1;
                    }
                    if (i % 3 == 0) {
                      main = 2;
                      cross = 2;
                    }

                    return StaggeredTile.count(cross, main);
                  },
                  itemBuilder: (context, i) {
                    return itemGridMuscle(width, height, muscleList[i], i);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget itemGridMuscle(double width, double height, data, index) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(2, 3),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  data['image'],
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: index % 3 == 0 ? height * 0.1 : height * 0.03,
                  decoration: BoxDecoration(
                    color: cardColor.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
              ),
              index % 3 == 0
                  ? Positioned(
                      bottom: height * 0.02,
                      left: 10,
                      right: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  data['name'],
                                  style: TextStyle(
                                    fontSize: height * 0.02,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesome.history,
                                    size: width * 0.05,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "${data['duration'].toString()} minutes",
                                    style: TextStyle(
                                      fontSize: height * 0.018,
                                      fontFamily: "ROB",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "${data['type']}",
                                style: TextStyle(
                                  fontSize: height * 0.018,
                                  fontFamily: "ROB",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: width * 0.2,
                                height: height * 0.03,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Try",
                                    style: TextStyle(
                                      fontSize: height * 0.018,
                                      fontFamily: "ROB",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Positioned(
                      bottom: 0,
                      left: 10,
                      right: 10,
                      child: Container(
                        height: height * 0.027,
                        alignment: Alignment.center,
                        child: Text(
                          data['name'],
                          style: TextStyle(
                            fontSize: height * 0.015,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
