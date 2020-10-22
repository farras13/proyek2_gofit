import 'package:flutter/material.dart';
import 'package:gofits/helpers/global_variable.dart';
import './profile_page_view_model.dart';

class ProfilePageView extends ProfilePageViewModel {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Replace this with your build function
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: logOutButton(width, height),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget logOutButton(double width, double height) {
    return Container(
      width: width,
      height: height * 0.065,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: height * 0.02),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(3),
      ),
      child: MaterialButton(
        child: Text(
          "SIGN OUT",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.5),
        ),
        onPressed: () => signOut(),
      ),
    );
  }
}
