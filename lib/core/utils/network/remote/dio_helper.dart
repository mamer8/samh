import 'package:dio/dio.dart';

import '../../../app_export.dart';

class DioClient {
  static late final Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: 60 * 1000,
        receiveTimeout: 60 * 1000,
        validateStatus: (status) => true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
  }) async {
    dio.options.headers = {'Content-Type': 'application/json'};

    return await dio.get(
      url,
    );
  }
}
