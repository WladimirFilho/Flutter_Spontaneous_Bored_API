import 'package:bored_api_app/application/constants.dart';
import 'package:bored_api_app/functions/serialization.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPref sharedPref = SharedPref();

class SharedPref {
  late SharedPreferences _instance;
  late Map<String, dynamic> data;

  Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
    await getData;
  }

  Future<void> getData() async {
    final String jsonString =
        _instance.getString(keyInternalData) ?? await saveInternatData();
    Map<String, dynamic> map = fromStringToMap(stringData: jsonString);
    data = map;
  }

  Future<String> saveInternatData({String jsonString = jsonStringEmpty}) async {
    String jsonStringInitValue = jsonString;
    await _instance.setString(keyInternalData, jsonStringInitValue);
    return jsonStringInitValue;
  }
}
