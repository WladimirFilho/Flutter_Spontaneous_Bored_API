// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bored_api_app/data/notifiers/manage_notifier.dart';

class DataModel {
  final String activity;
  final String type;
  final int participants;
  final String price;
  final String link;
  final String key;
  final String accessibility;
  DataModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  Future<void> reset() async {
    await setDataNotifier();
  }
}
