import 'package:dio/dio.dart';
import 'package:giphy_example/constants.dart';

class GiphyApiKeyInjectingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters = {
      ...options.queryParameters,
      "api_key": kGiphyKey,
    };
    super.onRequest(options, handler);
  }
}
