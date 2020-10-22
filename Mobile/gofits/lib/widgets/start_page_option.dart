import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/screens/register_page/register_page.dart';
import 'package:gofits/widgets/route_animation.dart';

class StartPageOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: height,
            child: Image.asset(
              "assets/images/mbak.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Let's get Ready",
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: "RG",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Achieve your goal now and live fit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: width * 0.8,
                      height: 45,
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
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          onPressed: () => nextPage(context, LoginPage()),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: width * 0.8,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: mainColor, width: 2)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: MaterialButton(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          onPressed: () => nextPage(context, RegisterPage()),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width * 0.7,
                  child: Text(
                    "By signing up you agree to Terms of Service and Privacy Policy",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
