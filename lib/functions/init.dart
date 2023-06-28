import 'package:bored_api_app/data/notifiers/manage_notifier.dart';
import 'package:bored_api_app/data/shared_pref.dart';

Future<void> initApp() async {
  await initSharedPref();
  await initDataNotifier();
}

Future<void> initDataNotifier() async {
  await setDataNotifier();
}

Future<void> initSharedPref() async {
  await sharedPref.init();
}
