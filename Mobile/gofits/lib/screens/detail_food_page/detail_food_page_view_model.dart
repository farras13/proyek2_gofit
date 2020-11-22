import 'package:flutter/material.dart';
import 'package:gofits/api/food_services.dart';
import './detail_food_page.dart';

abstract class DetailFoodPageViewModel extends State<DetailFoodPage> {
  Map dataFood = Map();
  List ingridientsList = List();
  List methodList = List();

  getFoodData() {
    FoodServices.getDetailFood(widget.idFood).then((value) {
      var jsonObject = value.data;
      setState(() {
        dataFood = jsonObject['data'];
        ingridientsList.addAll(jsonObject['data']['ingridients']);
        methodList.addAll(jsonObject['data']['methods']);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getFoodData();
  }
}
