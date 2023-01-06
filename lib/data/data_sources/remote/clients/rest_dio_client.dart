import 'package:dio/dio.dart';

abstract class RestDioClient {
  static Dio getBasicClient() {
    return Dio(BaseOptions(baseUrl: 'https://dev.server'));
  }
}
