import 'package:bored_api_app/data/dio.dart';
import 'package:bored_api_app/data/shared_pref.dart';
import 'package:bored_api_app/functions/serialization.dart';

Future<Map<String, dynamic>> getInternalData() async {
  await sharedPref.getData();
  Map<String, dynamic> map = sharedPref.data;
  return map;
}

// Function structure:
// - receives the data from the api
// - converts to a String Json representation
// - returns a Map
Future<Map<String, dynamic>> getExternalData() async {
  Map<String, dynamic> map = await getHttpRequest();

// Receives the Map from the request and passes to be converted to a string
  String jsonString = fromMapToString(map: map);

// It saved the string converted to an internal data
  await saveNewInternalData(externalDataString: jsonString);

// Returns the map from the API
  return map;
}

// Function to save the internal data after the API request
// This will prevent the app to have a empty data if the client does not have internet connection
Future<void> saveNewInternalData({required String externalDataString}) async {
  sharedPref.saveInternatData(jsonString: externalDataString);
}
