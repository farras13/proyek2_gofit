import 'package:flutter/material.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/widgets/route_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './profile_page.dart';

abstract class ProfilePageViewModel extends State<ProfilePage> {
  // Add your state and logic here
  String dataImage = "assets/images/pakndul.jpg";
  String name = "";
  String gender = "";
  String tall = "";
  String weight = "";
  String age = "";

  getDataUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      name = sp.get("name");
      gender = sp.get("gender");
      tall = sp.get("height");
      weight = sp.get("weight");
      age = sp.get("age");
    });
  }

  signOut() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    nextPageRemove(context, LoginPage());
  }

  @override
  void initState() {
    super.initState();
    getDataUser();
  }
}
