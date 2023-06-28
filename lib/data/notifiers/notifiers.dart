import 'package:bored_api_app/models/data_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<DataModel> dataNotifier = ValueNotifier(
  DataModel(
    activity: 'activity',
    type: 'type',
    participants: 0,
    price: '0',
    link: 'link',
    key: 'key',
    accessibility: '0',
  ),
);

ValueNotifier<bool> isConnectedNotifier = ValueNotifier(false);
