import 'package:flutter/material.dart';

import './register_page.dart';

abstract class RegisterPageViewModel extends State<RegisterPage> {
  TextEditingController passwordController;
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController heightController;
  TextEditingController weightController;
  bool isVisible;
  String gender = "";
  bool isLogginPressed = false;
  List<bool> isSelected = [false, false];

  void loginAction() {}

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
    isVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
