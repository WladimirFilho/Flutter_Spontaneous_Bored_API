import 'package:bored_api_app/data/notifiers/notifiers.dart';
import 'package:bored_api_app/functions/manage_data.dart';
import 'package:bored_api_app/functions/serialization.dart';

Map<String, dynamic> dataMapCurrent = {};

Future<void> setDataNotifier() async {
  if (isConnectedNotifier.value) {
    dataMapCurrent = await getExternalData();
  } else {
    dataMapCurrent = await getInternalData();
  }

  if (dataMapCurrent.isNotEmpty) {
    dataNotifier.value = fromMapToDataModel(map: dataMapCurrent);
  }
}
