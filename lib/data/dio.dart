import 'package:dio/dio.dart';

final dio = Dio();

// Connecting with the Api
Future<Map<String, dynamic>> getHttpRequest() async {
  final Response<dynamic> response = await dio.get(
    'https://www.boredapi.com/api/activity/',
  );
  return response.data;
}
