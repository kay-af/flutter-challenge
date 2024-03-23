import 'package:dio/dio.dart';

class GiphyMetaParamsInjectingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters = {
      ...options.queryParameters,
      "rating": "g",
      "bundle": "messaging_non_clips",
    };
    super.onRequest(options, handler);
  }
}
