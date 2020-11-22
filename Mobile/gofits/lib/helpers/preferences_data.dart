import 'package:shared_preferences/shared_preferences.dart';

class PreferencesData {
  Future setIsLoggedIn(String isLoggedIn) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("isLoggedIn", "login");
  }

  Future setDataUser(
    String name,
    String gender,
    String height,
    String weight,
    String age,
  ) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("name", name);
    sp.setString("gender", gender);
    sp.setString("height", height);
    sp.setString("weight", weight);
    sp.setString("age", age);
  }

  Future setDataFood(String foodName, String foodImage) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("foodName", foodName);
    sp.setString("foodImage", foodImage);
  }

  Future setFoodQty(String qty) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("foodQty", qty);
  }
}
