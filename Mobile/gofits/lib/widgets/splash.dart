import 'package:flutter/material.dart';
import 'package:gofits/screens/navigator_page/navigator_page.dart';
import 'package:gofits/widgets/route_animation.dart';
import 'package:gofits/widgets/start_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  autologin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String isLoggedIn = sp.getString("isLoggedIn");
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isLoggedIn == 'login') {
          nextPageReplacement(context, NavigatorPage());
        } else {
          nextPageReplacement(context, StartPage());
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    autologin();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: width,
            height: height,
            child: Image.asset(
              "assets/images/splash.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Go Fit',
                style: new TextStyle(
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "RG"),
              ),
              Text(
                'Your healthy partner everyday',
                style: new TextStyle(
                  fontSize: width * 0.045,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
