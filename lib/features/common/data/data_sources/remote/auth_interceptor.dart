import 'package:dio/dio.dart';
import 'package:kotusiks_app/core/constants/texts.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio commonDio;

  AuthInterceptor(
    this.commonDio,
  );

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // await FlutterPlatformAlert.showAlert(
    //     windowTitle: AppErrors.requestError,
    //     text: err.message ?? err.response.toString());

    return handler.reject(err);
  }
}
