import 'package:flutter/material.dart';
import 'package:gofits/api/user_services.dart';
import 'package:gofits/helpers/preferences_data.dart';
import 'package:gofits/screens/navigator_page/navigator_page.dart';
import 'package:gofits/widgets/all_widget.dart';
import 'package:gofits/widgets/route_animation.dart';

import './login_page.dart';

abstract class LoginPageViewModel extends State<LoginPage> {
  TextEditingController passwordController;
  TextEditingController usernameController;
  bool isVisible;
  bool isLogginPressed = false;
  PreferencesData _preferencesData = PreferencesData();

  void loginAction() {
    bool condition = usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
    if (condition) {
      UserServices.login(usernameController.text, passwordController.text)
          .then((value) {
        var jsonObject = value.data;
        var rawData = jsonObject['data'][0];
        _preferencesData.setDataUser(
          rawData['username'],
          rawData['gender'],
          rawData['tinggi'],
          rawData['berat'],
          rawData['umur'],
        );
        _preferencesData.setIsLoggedIn("login");
        nextPageRemove(context, NavigatorPage());
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
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    isVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
