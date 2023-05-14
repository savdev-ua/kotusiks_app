import 'package:dio/dio.dart';

BaseOptions baseDioOptions() {
  return BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: 30 * 1000,
    receiveTimeout: 30 * 1000,
    sendTimeout: 30 * 1000,
  );
}
