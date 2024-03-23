import 'package:dio/dio.dart';
import 'package:giphy_example/network/client/giphy_client.dart';
import 'package:giphy_example/network/models/responses/gif_response.dart';

class GiphyService {
  Future<GifResponse> search({
    required String q,
    int offset = 0,
    int limit = 30,
    CancelToken? cancelToken,
  }) async {
    final response = await giphyClient.get(
      "/gifs/search",
      cancelToken: cancelToken,
      queryParameters: {
        "q": q,
        "offset": offset,
        "limit": limit,
      },
    );
    return GifResponse.fromJson(response.data);
  }

  Future<GifResponse> trending({
    int offset = 0,
    int limit = 30,
    CancelToken? cancelToken,
  }) async {
    final response = await giphyClient.get(
      "/gifs/trending",
      cancelToken: cancelToken,
      queryParameters: {
        "offset": offset,
        "limit": limit,
      },
    );
    return GifResponse.fromJson(response.data);
  }
}
