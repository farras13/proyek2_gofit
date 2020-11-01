import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/food_calories_page/widget/food_calories_widget.dart';
import 'package:gofits/widgets/route_animation.dart';
import 'package:gofits/widgets/search_list_page.dart';
import './food_calories_page_view_model.dart';

class FoodCaloriesPageView extends FoodCaloriesPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
            ),
            onPressed: () {
              backScreen(context);
            }),
        title: Text(
          "Food Calories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: width * 0.05,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.03),
            inputFoodIngridients(width, height),
            SizedBox(height: height * 0.02),
            contentFood(width, height),
            SizedBox(height: height * 0.04),
            calorieData(width, height),
            SizedBox(height: height * 0.04),
            conclutionBox(width),
          ],
        ),
      ),
      floatingActionButton: btnCountCalories(width, height),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget btnCountCalories(double width, double height) {
    return Container(
      width: width,
      height: height * 0.055,
      color: mainColor,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Count",
          style: TextStyle(
            fontSize: width * 0.04,
            fontFamily: "ROBB",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget inputFoodIngridients(double width, double height) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          dropdownSearch(
            width,
            height,
            "Ingridients",
            [],
          ),
          Container(
            width: width * 0.35,
            height: height * 0.06,
            child: Card(
              elevation: 6,
              color: cardColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ROB",
                  ),
                  controller: qtyController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixText: "g",
                      suffixStyle: TextStyle(
                        color: mainColor,
                        fontFamily: "ROB",
                      ),
                      hintText: "Qty",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ROB",
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget dropdownSearch(double width, double height, String title, data) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SearchListPage(
              dataList: data,
            ),
          ),
        );
      },
      child: Container(
        width: width * 0.35,
        height: height * 0.06,
        child: Card(
          elevation: 6,
          color: cardColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesome.caret_down,
                  color: mainColor,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
