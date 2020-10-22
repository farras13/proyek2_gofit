import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/detail_workout_page/widget/detail_workout_widget.dart';
import './detail_workout_page_view_model.dart';

class DetailWorkoutPageView extends DetailWorkoutPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: bgColor,
          body: NotificationListener<ScrollUpdateNotification>(
            child: CustomScrollView(
              controller: scrollController,
              slivers: <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  expandedHeight: height * 0.3,
                  pinned: true,
                  flexibleSpace: imageDetailWorkoutHeader(
                    context,
                    width,
                    height,
                    isScrolled,
                    widget.dataId,
                    widget.dataImage,
                    widget.dataName,
                    widget.totalExercise,
                    widget.duration,
                    widget.round,
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    workoutList
                        .map(
                          (data) => detailWorkoutItem(
                            context,
                            width,
                            height,
                            data,
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
            // ignore: missing_return
            onNotification: (notification) {
              setState(() {
                dataOffset = notification.metrics.pixels;
                if (dataOffset > height * 0.1) {
                  isScrolled = true;
                } else {
                  isScrolled = false;
                }
              });
            },
          )),
    );
  }
}
