import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/calories_data.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/food_calories_page/widget/food_calories_widget.dart';
import 'package:gofits/widgets/search_list_page.dart';
import './food_calories_page_view_model.dart';

class FoodCaloriesPageView extends FoodCaloriesPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: onPop,
      child: Scaffold(
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
                backToProfile();
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
              isLoading
                  ? Container(
                      margin: EdgeInsets.only(top: height * 0.15),
                      width: width * 0.3,
                      height: width * 0.3,
                      child: CircularProgressIndicator(
                        strokeWidth: 10,
                        valueColor: AlwaysStoppedAnimation(mainColor),
                      ),
                    )
                  : isVisible
                      ? Column(
                          children: [
                            SizedBox(height: height * 0.02),
                            contentFood(
                              width,
                              height,
                              image,
                              qtyController.text,
                              ingridients,
                            ),
                            SizedBox(height: height * 0.04),
                            calorieData(
                              width,
                              height,
                              protein,
                              fat,
                              carbo,
                            ),
                            SizedBox(height: height * 0.04),
                            conclutionBox(
                              width,
                              qtyController.text,
                              total,
                              ingridients,
                            ),
                          ],
                        )
                      : emptyFood(width, height),
            ],
          ),
        ),
        floatingActionButton: btnCountCalories(width, height),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget btnCountCalories(double width, double height) {
    return Container(
      width: width * 0.8,
      height: height * 0.055,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: MaterialButton(
          onPressed: () {
            getFoodCalories();
          },
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
            ingridients != null ? ingridients : "Ingridients",
            foodList,
          ),
          Container(
            width: 150,
            height: 50,
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
                      suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(36, 12, 0, 0),
                        child: Text(
                          "g",
                          style: TextStyle(
                            color: mainColor,
                            fontFamily: "ROB",
                          ),
                        ),
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
        preferencesData.setFoodQty(qtyController.text);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SearchListPage(
              dataList: data,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 50,
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
