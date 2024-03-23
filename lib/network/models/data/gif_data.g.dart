// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GifOriginalImageDataImpl _$$GifOriginalImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GifOriginalImageDataImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$GifOriginalImageDataImplToJson(
        _$GifOriginalImageDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$GifImagesDataImpl _$$GifImagesDataImplFromJson(Map<String, dynamic> json) =>
    _$GifImagesDataImpl(
      original: GifOriginalImageData.fromJson(
          json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GifImagesDataImplToJson(_$GifImagesDataImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
    };

_$GifDataImpl _$$GifDataImplFromJson(Map<String, dynamic> json) =>
    _$GifDataImpl(
      id: json['id'] as String,
      images: GifImagesData.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GifDataImplToJson(_$GifDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
    };
