import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/widgets/intro_page.dart';
import 'package:gofits/widgets/route_animation.dart';

class StartPage extends StatelessWidget {
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
              "assets/images/start.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 130),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text("Go Fit.", style: titleText),
                      Text("Get a perfect workout experience",
                          style: subTitleText),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: Text(
                          "You can deal with fit or you can deal with fat. Eat healthy, live long, live strong!",
                          style: smallText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                
                Column(
                  children: [
                    Container(
                      width: width * 0.7,
                      height: 45,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: MaterialButton(
                          child: Text(
                            "Start",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          onPressed: () => nextPage(context, IntroPage()),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => nextPage(context, LoginPage()),
                      child: Text(
                        "Already have an account",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
