import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../features/common/data/data_sources/remote/auth_interceptor.dart';
import 'config/build_environment.dart';
import 'config/dio_options.dart';

class CoreModule extends Module {

  static Dio textDioInstance() {
    final dio = Dio(baseDioOptions()..baseUrl = env.factsBase);
    dio.interceptors.add(AuthInterceptor(dio));
    _addLoggerInterceptor(dio);
    return dio;
  }

  static Dio imageDioInstance() {
    final dio = Dio(baseDioOptions()..baseUrl = env.imagesBase);
    dio.interceptors.add(AuthInterceptor(dio));
    _addLoggerInterceptor(dio);
    return dio;
  }

  static void _addLoggerInterceptor(Dio dio) {
    if (env.flavor == BuildFlavor.dev) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
  }

  @override
  List<Bind> get binds => [
    Bind.singleton((i) => textDioInstance(), export: true),
    Bind.singleton((i) => imageDioInstance(), export: true),
  ];
}
