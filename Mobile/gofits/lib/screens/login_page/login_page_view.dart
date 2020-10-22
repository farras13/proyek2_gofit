import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/login_page/widgets/login_widget.dart';
import 'package:gofits/screens/register_page/register_page.dart';
import 'package:gofits/widgets/route_animation.dart';

import './login_page_view_model.dart';

class LoginPageView extends LoginPageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/mbak.png"),
                    fit: BoxFit.cover)),
            child: SizedBox(
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  headerLoginPage(width, height),
                  formLogin(width),
                  InkWell(
                    onTap: () => nextPage(context, RegisterPage()),
                    child: Text(
                      "Create new Account ? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget formLogin(double width) {
    return Container(
      width: width,
      height: 280,
      margin: EdgeInsets.symmetric(horizontal: 36),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                ),
                Container(
                  width: width,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: mainColor, width: 1.5),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: inputColor,
                      fontSize: 15,
                    ),
                    scrollPadding: EdgeInsets.only(bottom: 15),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                        color: inputColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
                ),
                Container(
                  width: width,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: mainColor, width: 1.5),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: inputColor,
                      fontSize: 15,
                    ),
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: inputColor,
                        fontSize: 15,
                      ),
                      suffix: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          child: Icon(
                            !isVisible
                                ? FontAwesome.eye_slash
                                : FontAwesome.eye,
                            size: 18,
                            color: mainColor,
                          ),
                        ),
                        onTap: () => changeVisibility(),
                      ),
                    ),
                    obscureText: isVisible,
                  ),
                ),
              ],
            ),
            loginBtn(width),
          ],
        ),
      ),
    );
  }

  Widget loginBtn(double width) {
    return Center(
      child: Container(
        width: width,
        height: 40,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MaterialButton(
            child: Text(
              "SIGN IN",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            onPressed: () => loginAction(),
          ),
        ),
      ),
    );
  }
}
