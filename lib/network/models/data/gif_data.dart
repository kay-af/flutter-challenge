import 'package:freezed_annotation/freezed_annotation.dart';

part 'gif_data.freezed.dart';
part 'gif_data.g.dart';

@freezed
class GifOriginalImageData with _$GifOriginalImageData {
  factory GifOriginalImageData({
    required String url,
  }) = _GifOriginalImageData;

  factory GifOriginalImageData.fromJson(Map<String, dynamic> json) =>
      _$GifOriginalImageDataFromJson(json);
}

@freezed
class GifImagesData with _$GifImagesData {
  factory GifImagesData({
    required GifOriginalImageData original,
  }) = _GifImagesData;

  factory GifImagesData.fromJson(Map<String, dynamic> json) => _$GifImagesDataFromJson(json);
}

@freezed
class GifData with _$GifData {
  factory GifData({
    required String id,
    required GifImagesData images,
  }) = _GifData;

  factory GifData.fromJson(Map<String, dynamic> json) => _$GifDataFromJson(json);
}
