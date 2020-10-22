import 'package:flutter/material.dart';
import './detail_food_page.dart';

abstract class DetailFoodPageViewModel extends State<DetailFoodPage> {
  var data = {
    "name": "Fruity Smoothie Bowl",
    "desc": "Quick and easy",
    "portion": 2,
    "time": 30,
    "calories": 125,
    "ingridients": [
      "2 banana",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
      "125 g frozen rasberi",
    ],
    "methods": [
      "Thinly slice 1/2 banana. Coarsely chop remaining 1 1/2 bananas.",
      "Divide the smoothie mixture evenly between 2 serving bowls. Arrange the blueberries, strawberry, remaining granola and the sliced banana in even rows on top of the smoothie. Gently swirl a little yoghurt into the uncovered smoothie, if desired.",
      "Thinly slice 1/2 banana. Coarsely chop remaining 1 1/2 bananas.",
      "Divide the smoothie mixture evenly between 2 serving bowls. Arrange the blueberries, strawberry, remaining granola and the sliced banana in even rows on top of the smoothie. Gently swirl a little yoghurt into the uncovered smoothie, if desired.",
    ]
  };
}
