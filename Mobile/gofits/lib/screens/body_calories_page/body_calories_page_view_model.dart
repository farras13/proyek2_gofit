import 'package:flutter/material.dart';
import './body_calories_page.dart';

abstract class BodyCaloriesPageViewModel extends State<BodyCaloriesPage> {
  TextEditingController heightInput = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController age = TextEditingController();
}
