import 'package:flutter/material.dart';
import 'package:gofits/api/food_services.dart';
import './food_page.dart';

abstract class FoodPageViewModel extends State<FoodPage> {
  // Add your state and logic here
  List listFood;

  getListFood() {
    FoodServices.getListFood().then((value) {
      var jsonObject = value.data;
      setState(() {
        listFood = List();
        listFood.addAll(jsonObject['data']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListFood();
  }
}
