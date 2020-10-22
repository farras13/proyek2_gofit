import 'package:shared_preferences/shared_preferences.dart';

class PreferencesData {
  Future setIsLoggedIn(String isLoggedIn) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("isLoggedIn", "login");
  }
}
