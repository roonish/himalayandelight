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
  bool get isLogin => _sharedPrefs.getBool(login) ?? false;

  set showOnboarding(bool value) {
    _sharedPrefs.setBool(onboarding, value);
  }

  set isLogin(bool value) {
    _sharedPrefs.setBool(login, value);
  }
}

const String onboarding = "showOnboarding";
const String login = "login";
