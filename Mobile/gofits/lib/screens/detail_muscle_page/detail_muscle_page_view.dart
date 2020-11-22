import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/detail_muscle_page/widget/detail_muscle_widget.dart';
import 'package:gofits/widgets/shimmer/detail_sport_shimmer.dart';
import './detail_muscle_page_view_model.dart';

class DetailMusclePageView extends DetailMusclePageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: bgColor,
          body: muscleList == null
              ? DeetailSportShimmer()
              : NotificationListener<ScrollUpdateNotification>(
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: <Widget>[
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.transparent,
                        expandedHeight: height * 0.3,
                        pinned: true,
                        flexibleSpace: imageDetailMuscleHeader(
                            context,
                            width,
                            height,
                            isScrolled,
                            widget.dataId,
                            widget.dataImage,
                            widget.dataName,
                            widget.video),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          muscleList
                              .map(
                                (data) => detailMuscleItem(
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
