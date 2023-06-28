import 'dart:convert';

import 'package:bored_api_app/application/constants.dart';
import 'package:bored_api_app/models/data_model.dart';

// To transform the string that comer from the api, to be used in the app as a Map
Map<String, dynamic> fromStringToMap({required String stringData}) {
  Map<String, dynamic> map = json.decode(stringData);
  return map;
}

// To transform the Map back to a String
String fromMapToString({required Map<String, dynamic> map}) {
  String jsonString = json.encode(map);
  return jsonString;
}

DataModel fromMapToDataModel({required Map<String, dynamic> map}) {
  return DataModel(
    activity: map[kActivity] ?? '',
    type: map[kType] ?? '',
    participants: map[kParticipants] ?? '',
    price: map[kPrice].toString(),
    link: map[kLink] ?? '',
    key: map[kKey] ?? '',
    accessibility: map[kAccessibility].toString(),
  );
}
