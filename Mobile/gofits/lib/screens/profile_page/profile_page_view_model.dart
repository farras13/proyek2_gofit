import 'package:flutter/material.dart';
import 'package:gofits/screens/login_page/login_page.dart';
import 'package:gofits/widgets/route_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './profile_page.dart';

abstract class ProfilePageViewModel extends State<ProfilePage> {
  // Add your state and logic here
  signOut() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    nextPageRemove(context, LoginPage());
  }
}
