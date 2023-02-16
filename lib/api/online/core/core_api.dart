import 'package:dio/dio.dart';

abstract class CoreApi {
  Dio dio = Dio(options);

  static BaseOptions options = BaseOptions();
}
