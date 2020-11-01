import 'package:flutter/material.dart';
import './edit_profile_page.dart';

abstract class EditProfilePageViewModel extends State<EditProfilePage> {
  // Add your state and logic here
  String dataImage = "assets/images/pakndul.jpg";
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController heightInput = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController quote = TextEditingController();
  bool isVisible = false;
  changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }
}
