import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/detail_food_page/widget/detail_food_widget.dart';
import './detail_food_page_view_model.dart';

class DetailFoodPageView extends DetailFoodPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Replace this with your build function
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              imageHeaderDetailFood(
                  context, width, height, widget.image, widget.idFood, data),
              ingridients(width, height, data),
              methods(width, height, data),
            ],
          ),
        ),
      ),
    );
  }
}
