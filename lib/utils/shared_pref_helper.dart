import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  late final SharedPreferences _sharedPrefs;
  static final SharedPrefs _instance = SharedPrefs._internal();
  factory SharedPrefs() => _instance;
  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  bool get showOnboarding => _sharedPrefs.getBool(onboarding) ?? true;

  set showOnboarding(bool value) {
    _sharedPrefs.setBool(onboarding,value);
  }
}

const String onboarding = "showOnboarding";
