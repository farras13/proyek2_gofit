import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import 'package:gofits/screens/profile_page/widgets/profile_widget.dart';
import './profile_page_view_model.dart';

class ProfilePageView extends ProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Replace this with your build function
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.06),
          imageSection(width, dataImage),
          SizedBox(height: height * 0.03),
          dataSectionProfile(width),
          SizedBox(height: height * 0.03),
          serviceSectionProfile(context, width),
          SizedBox(height: height * 0.03),
          infoProfile(width),
          SizedBox(height: height * 0.04),
          textMotivation(width),
          SizedBox(height: height * 0.04),
          logOutButton(width, height),
        ],
      ),
    );
  }

  Widget logOutButton(double width, double height) {
    return Container(
      width: width,
      height: height * 0.045,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.1,
        vertical: height * 0.02,
      ),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: MaterialButton(
        child: Text(
          "SIGN OUT",
          style: TextStyle(
            fontSize: height * 0.02,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
        onPressed: () => signOut(),
      ),
    );
  }
}
