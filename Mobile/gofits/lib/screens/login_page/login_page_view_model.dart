import 'package:flutter/material.dart';
import 'package:gofits/helpers/preferences_data.dart';
import 'package:gofits/screens/navigator_page/navigator_page.dart';
import 'package:gofits/widgets/route_animation.dart';

import './login_page.dart';

abstract class LoginPageViewModel extends State<LoginPage> {
  TextEditingController passwordController;
  TextEditingController emailController;
  bool isVisible;
  bool isLogginPressed = false;
  PreferencesData _preferencesData = PreferencesData();

  void loginAction() {
    _preferencesData.setIsLoggedIn("login");
    nextPage(context, NavigatorPage());
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
    isVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
