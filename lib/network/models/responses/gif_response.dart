import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_example/network/models/data/gif_data.dart';
import 'package:giphy_example/network/models/data/pagination_data.dart';

part 'gif_response.freezed.dart';
part 'gif_response.g.dart';

@freezed
class GifResponse with _$GifResponse {
  factory GifResponse({
    required PaginationData pagination,
    required List<GifData> data,
  }) = _GifResponse;

  factory GifResponse.fromJson(Map<String, dynamic> json) => _$GifResponseFromJson(json);
}
