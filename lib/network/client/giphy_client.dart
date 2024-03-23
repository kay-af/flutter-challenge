import 'package:dio/dio.dart';
import 'package:giphy_example/network/client/interceptors/giphy_api_key_injecting_interceptor.dart';
import 'package:giphy_example/network/client/interceptors/giphy_meta_params_injecting_interceptor.dart';

final giphyClient = Dio(BaseOptions(baseUrl: "https://api.giphy.com/v1"))
  ..interceptors.addAll([
    GiphyMetaParamsInjectingInterceptor(),
    GiphyApiKeyInjectingInterceptor(),
    LogInterceptor(),
  ]);
