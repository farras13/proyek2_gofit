import 'package:flutter/material.dart';
import 'package:gofits/api/food_services.dart';
import 'package:gofits/helpers/preferences_data.dart';
import 'package:gofits/screens/navigator_page/navigator_page.dart';
import 'package:gofits/widgets/all_widget.dart';
import 'package:gofits/widgets/route_animation.dart';

import 'package:shared_preferences/shared_preferences.dart';
import './food_calories_page.dart';

abstract class FoodCaloriesPageViewModel extends State<FoodCaloriesPage> {
  TextEditingController qtyController;
  bool isVisible = false;
  String ingridients;
  String image;
  double carbo;
  double protein;
  double fat;
  double total;
  bool isLoading = false;
  PreferencesData preferencesData = PreferencesData();

  Future<bool> onPop() async {
    preferencesData.setDataFood(null, null);
    preferencesData.setFoodQty("");
    nextPageRemove(
      context,
      NavigatorPage(
        indexPage: 3,
      ),
    );
    return true;
  }

  backToProfile() {
    preferencesData.setDataFood(null, null);
    preferencesData.setFoodQty("");
    nextPageRemove(
      context,
      NavigatorPage(
        indexPage: 3,
      ),
    );
  }

  getDataFood() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      ingridients = sp.get("foodName") ?? null;
      image = sp.get("foodImage") ?? null;
      String qty = sp.get("foodQty") ?? "";
      qtyController = TextEditingController(text: qty);
    });
  }

  getFoodCalories() {
    if (qtyController.text.isNotEmpty && ingridients != null) {
      setState(() {
        isLoading = true;
      });
      FoodServices.getFoodCalories(qtyController.text, ingridients)
          .then((value) {
        var jsonObject = value.data;
        var rawData = jsonObject['totalNutrientsKCal'];
        setState(() {
          protein = rawData['PROCNT_KCAL']['quantity'].toDouble();
          carbo = rawData['CHOCDF_KCAL']['quantity'].toDouble();
          fat = rawData['FAT_KCAL']['quantity'].toDouble();
          total = carbo + fat + protein;
          isLoading = false;
          isVisible = true;
        });
      });
    } else {
      toastMessage("Fill the input first");
    }
  }

  @override
  void initState() {
    super.initState();
    getDataFood();
  }

  @override
  void dispose() {
    super.dispose();
    if (mounted) {
      isVisible = false;
    }
  }
}
