import 'package:flutter/material.dart';
import 'package:gofits/helpers/calories_data.dart';
import 'package:gofits/widgets/all_widget.dart';
import './body_calories_page.dart';

abstract class BodyCaloriesPageViewModel extends State<BodyCaloriesPage> {
  TextEditingController heightInput = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController age = TextEditingController();
  Map selectedGender;
  int selected;
  double subtotal;
  int total;
  Map selectedActivity;
  double countHeight;
  double countWeight;
  double countAge;

  List genderList = [
    {
      "gender": "Man",
      "value": man,
      "height": manHeight,
      "weight": manWeight,
      "age": manAge,
    },
    {
      "gender": "Woman",
      "value": woman,
      "height": womanHeight,
      "weight": womanWeight,
      "age": womanAge,
    }
  ];

  List activityList = [
    {
      "index": 0,
      "name": "Very light activity",
      "value": lazy,
    },
    {
      "index": 1,
      "name": "Light activity",
      "value": lightActivity,
    },
    {
      "index": 2,
      "name": "Medium activity",
      "value": mediumActivity,
    },
    {
      "index": 3,
      "name": "Hard activity",
      "value": hardActivity,
    },
    {
      "index": 4,
      "name": "Very hard activity",
      "value": veryHardActivity,
    },
  ];

  onPressedCount() {
    bool condition = heightInput.text.isNotEmpty &&
        weight.text.isNotEmpty &&
        age.text.isNotEmpty &&
        selectedGender != null &&
        selectedActivity != null;
    if (condition) {
      setState(() {
        countHeight = selectedGender['height'] * int.parse(heightInput.text);
        countWeight = selectedGender['weight'] * int.parse(weight.text);
        countAge = selectedGender['age'] * int.parse(age.text);
        print("count : ${selectedActivity['value']}");
        subtotal =
            selectedGender['value'] + countWeight + countHeight - countAge;
        total = (subtotal * selectedActivity['value']).toInt();
      });
    } else {
      toastMessage("Fill all the input first");
    }
  }
}

// gender : 66.437
// wheight : 956.3399999999999
// height : 332.928
// age : 935120.0
// activity : 1.55
