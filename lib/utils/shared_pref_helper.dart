import 'dart:convert';
import 'dart:typed_data';

import 'package:himalayan_delights/utils/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static String showOnboarding = 'showOnboarding';
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

    static Future<void> resetIntro() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(showOnboarding, true);
  }
}
