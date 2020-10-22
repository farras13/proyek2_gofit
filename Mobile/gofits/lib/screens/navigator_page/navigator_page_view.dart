import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/food_page/food_page.dart';
import 'package:gofits/screens/muscle_page/muscle_page.dart';
import 'package:gofits/screens/profile_page/profile_page.dart';
import 'package:gofits/screens/workout_list_page/workout_page.dart';
import 'package:gofits/widgets/navigator_bar_widget.dart';

import './navigator_page_view_model.dart';

class NavigatorPageView extends NavigatorPageViewModel {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: indexPage,
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: bgColor,
          body: TabBarView(
            children: <Widget>[
              WorkoutListPage(),
              FoodPage(),
              MusclePage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: bottomBar(context),
        ),
      ),
    );
  }
}
