// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDataImpl _$$PaginationDataImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDataImpl(
      total_count: json['total_count'] as int,
      count: json['count'] as int,
      offset: json['offset'] as int,
    );

Map<String, dynamic> _$$PaginationDataImplToJson(
        _$PaginationDataImpl instance) =>
    <String, dynamic>{
      'total_count': instance.total_count,
      'count': instance.count,
      'offset': instance.offset,
    };
