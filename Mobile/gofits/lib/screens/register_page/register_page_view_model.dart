import 'package:flutter/material.dart';
import 'package:gofits/api/user_services.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/widgets/all_widget.dart';
import 'package:gofits/widgets/route_animation.dart';

import './register_page.dart';

abstract class RegisterPageViewModel extends State<RegisterPage> {
  TextEditingController passwordController;
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController heightController;
  TextEditingController weightController;
  TextEditingController ageController;
  bool isVisible;
  String gender = "";
  bool isLogginPressed = false;
  List<bool> isSelected = [false, false];

  void registerAction() {
    bool condition = nameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        gender != "" &&
        heightController.text.isNotEmpty &&
        weightController.text.isNotEmpty &&
        ageController.text.isNotEmpty;
    if (condition) {
      UserServices.register(
        nameController.text,
        nameController.text,
        passwordController.text,
        gender,
        heightController.text,
        weightController.text,
        ageController.text,
      ).then((value) {
        // print(value);
        nextPageRemove(context, LoginPage());
        toastMessage("Register Success");
      });
    } else {
      toastMessage("Fill all field first");
    }
  }

  changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    heightController = TextEditingController();
    weightController = TextEditingController();
    ageController = TextEditingController();
    isVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
